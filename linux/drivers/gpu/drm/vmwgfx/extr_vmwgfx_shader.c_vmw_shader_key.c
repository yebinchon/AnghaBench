
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SVGA3dShaderType ;



__attribute__((used)) static u32 vmw_shader_key(u32 user_key, SVGA3dShaderType shader_type)
{
 return user_key | (shader_type << 20);
}
