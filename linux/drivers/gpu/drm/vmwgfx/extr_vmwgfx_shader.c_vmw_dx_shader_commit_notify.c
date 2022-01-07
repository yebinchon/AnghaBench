
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int binding_mutex; } ;
struct vmw_dx_shader {int committed; int id; int cotable_head; int cotable; } ;
typedef enum vmw_cmdbuf_res_state { ____Placeholder_vmw_cmdbuf_res_state } vmw_cmdbuf_res_state ;


 int VMW_CMDBUF_RES_ADD ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_cotable_add_resource (int ,int *) ;
 struct vmw_dx_shader* vmw_res_to_dx_shader (struct vmw_resource*) ;

__attribute__((used)) static void vmw_dx_shader_commit_notify(struct vmw_resource *res,
     enum vmw_cmdbuf_res_state state)
{
 struct vmw_dx_shader *shader = vmw_res_to_dx_shader(res);
 struct vmw_private *dev_priv = res->dev_priv;

 if (state == VMW_CMDBUF_RES_ADD) {
  mutex_lock(&dev_priv->binding_mutex);
  vmw_cotable_add_resource(shader->cotable,
      &shader->cotable_head);
  shader->committed = 1;
  res->id = shader->id;
  mutex_unlock(&dev_priv->binding_mutex);
 } else {
  mutex_lock(&dev_priv->binding_mutex);
  list_del_init(&shader->cotable_head);
  shader->committed = 0;
  res->id = -1;
  mutex_unlock(&dev_priv->binding_mutex);
 }
}
