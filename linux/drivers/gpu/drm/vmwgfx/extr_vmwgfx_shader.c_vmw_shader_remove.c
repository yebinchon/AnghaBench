
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_resource {int dummy; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
struct list_head {int dummy; } ;
typedef int SVGA3dShaderType ;


 int EINVAL ;
 int vmw_cmdbuf_res_remove (struct vmw_cmdbuf_res_manager*,int ,int ,struct list_head*,struct vmw_resource**) ;
 int vmw_cmdbuf_res_shader ;
 int vmw_shader_id_ok (int ,int ) ;
 int vmw_shader_key (int ,int ) ;

int vmw_shader_remove(struct vmw_cmdbuf_res_manager *man,
        u32 user_key, SVGA3dShaderType shader_type,
        struct list_head *list)
{
 struct vmw_resource *dummy;

 if (!vmw_shader_id_ok(user_key, shader_type))
  return -EINVAL;

 return vmw_cmdbuf_res_remove(man, vmw_cmdbuf_res_shader,
         vmw_shader_key(user_key, shader_type),
         list, &dummy);
}
