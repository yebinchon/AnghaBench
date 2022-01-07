
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct vmw_dx_shader {int cotable; } ;


 int kfree (struct vmw_dx_shader*) ;
 int ttm_mem_global_free (int ,int ) ;
 int vmw_mem_glob (struct vmw_private*) ;
 struct vmw_dx_shader* vmw_res_to_dx_shader (struct vmw_resource*) ;
 int vmw_resource_unreference (int *) ;
 int vmw_shader_dx_size ;

__attribute__((used)) static void vmw_dx_shader_res_free(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 struct vmw_dx_shader *shader = vmw_res_to_dx_shader(res);

 vmw_resource_unreference(&shader->cotable);
 kfree(shader);
 ttm_mem_global_free(vmw_mem_glob(dev_priv), vmw_shader_dx_size);
}
