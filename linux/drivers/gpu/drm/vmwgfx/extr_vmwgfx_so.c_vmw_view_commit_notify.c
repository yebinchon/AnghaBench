
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_view {int committed; int view_id; int srf_head; int cotable_head; int cotable; int srf; } ;
struct vmw_surface {int view_list; } ;
struct vmw_resource {int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int binding_mutex; } ;
typedef enum vmw_cmdbuf_res_state { ____Placeholder_vmw_cmdbuf_res_state } vmw_cmdbuf_res_state ;


 int VMW_CMDBUF_RES_ADD ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_cotable_add_resource (int ,int *) ;
 struct vmw_surface* vmw_res_to_srf (int ) ;
 struct vmw_view* vmw_view (struct vmw_resource*) ;

__attribute__((used)) static void vmw_view_commit_notify(struct vmw_resource *res,
       enum vmw_cmdbuf_res_state state)
{
 struct vmw_view *view = vmw_view(res);
 struct vmw_private *dev_priv = res->dev_priv;

 mutex_lock(&dev_priv->binding_mutex);
 if (state == VMW_CMDBUF_RES_ADD) {
  struct vmw_surface *srf = vmw_res_to_srf(view->srf);

  list_add_tail(&view->srf_head, &srf->view_list);
  vmw_cotable_add_resource(view->cotable, &view->cotable_head);
  view->committed = 1;
  res->id = view->view_id;

 } else {
  list_del_init(&view->cotable_head);
  list_del_init(&view->srf_head);
  view->committed = 0;
  res->id = -1;
 }
 mutex_unlock(&dev_priv->binding_mutex);
}
