
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_resource {int dummy; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
typedef int SVGA3dShaderType ;


 int EINVAL ;
 struct vmw_resource* ERR_PTR (int ) ;
 struct vmw_resource* vmw_cmdbuf_res_lookup (struct vmw_cmdbuf_res_manager*,int ,int ) ;
 int vmw_cmdbuf_res_shader ;
 int vmw_shader_id_ok (int ,int ) ;
 int vmw_shader_key (int ,int ) ;

struct vmw_resource *
vmw_shader_lookup(struct vmw_cmdbuf_res_manager *man,
    u32 user_key,
    SVGA3dShaderType shader_type)
{
 if (!vmw_shader_id_ok(user_key, shader_type))
  return ERR_PTR(-EINVAL);

 return vmw_cmdbuf_res_lookup(man, vmw_cmdbuf_res_shader,
         vmw_shader_key(user_key, shader_type));
}
