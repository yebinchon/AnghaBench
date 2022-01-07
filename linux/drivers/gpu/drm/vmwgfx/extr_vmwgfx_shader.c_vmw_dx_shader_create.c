
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int binding_mutex; } ;
struct vmw_dx_shader {int id; int committed; } ;


 int WARN_ON_ONCE (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_dx_shader_unscrub (struct vmw_resource*) ;
 struct vmw_dx_shader* vmw_res_to_dx_shader (struct vmw_resource*) ;
 scalar_t__ vmw_resource_mob_attached (struct vmw_resource*) ;

__attribute__((used)) static int vmw_dx_shader_create(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 struct vmw_dx_shader *shader = vmw_res_to_dx_shader(res);
 int ret = 0;

 WARN_ON_ONCE(!shader->committed);

 if (vmw_resource_mob_attached(res)) {
  mutex_lock(&dev_priv->binding_mutex);
  ret = vmw_dx_shader_unscrub(res);
  mutex_unlock(&dev_priv->binding_mutex);
 }

 res->id = shader->id;
 return ret;
}
