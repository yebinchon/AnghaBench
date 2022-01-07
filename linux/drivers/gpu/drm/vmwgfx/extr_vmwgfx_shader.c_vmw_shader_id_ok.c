
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ SVGA3dShaderType ;



__attribute__((used)) static bool vmw_shader_id_ok(u32 user_key, SVGA3dShaderType shader_type)
{
 return user_key <= ((1 << 20) - 1) && (unsigned) shader_type < 16;
}
