
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_shader {int dummy; } ;
struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;


 int kfree (struct vmw_shader*) ;
 int ttm_mem_global_free (int ,int ) ;
 int vmw_mem_glob (struct vmw_private*) ;
 struct vmw_shader* vmw_res_to_shader (struct vmw_resource*) ;
 int vmw_shader_size ;

__attribute__((used)) static void vmw_shader_free(struct vmw_resource *res)
{
 struct vmw_shader *shader = vmw_res_to_shader(res);
 struct vmw_private *dev_priv = res->dev_priv;

 kfree(shader);
 ttm_mem_global_free(vmw_mem_glob(dev_priv),
       vmw_shader_size);
}
