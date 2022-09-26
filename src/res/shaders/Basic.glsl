#shader vertex
#version 330 core // version number

layout (location = 0) in vec3 position; // get position attribute which is at location 0
layout (location = 1) in vec3 color;   // get color attribute which is at location 1
out vec3 fragColor; // output a color to the fragment shader

void main()
{
   gl_Position = vec4(position, 1.0f);
   fragColor = color;
};

#shader fragment
#version 330 core

out vec4 FragColor; // create a vector4 variable called color
in vec3 fragColor; // get the triangleColor variable from the vertex shader

void main()
{
   FragColor = vec4(fragColor, 1.0f);
};