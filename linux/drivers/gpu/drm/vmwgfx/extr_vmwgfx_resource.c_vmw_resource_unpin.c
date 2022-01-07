
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {scalar_t__ pin_count; struct vmw_buffer_object* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int reservation_sem; int cmdbuf_mutex; } ;
struct vmw_buffer_object {int base; } ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ttm_bo_reserve (int *,int,int,int *) ;
 int ttm_bo_unreserve (int *) ;
 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;
 int vmw_bo_pin_reserved (struct vmw_buffer_object*,int) ;
 int vmw_resource_reserve (struct vmw_resource*,int,int) ;
 int vmw_resource_unreserve (struct vmw_resource*,int,int,int,int *,unsigned long) ;

void vmw_resource_unpin(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 int ret;

 (void) ttm_read_lock(&dev_priv->reservation_sem, 0);
 mutex_lock(&dev_priv->cmdbuf_mutex);

 ret = vmw_resource_reserve(res, 0, 1);
 WARN_ON(ret);

 WARN_ON(res->pin_count == 0);
 if (--res->pin_count == 0 && res->backup) {
  struct vmw_buffer_object *vbo = res->backup;

  (void) ttm_bo_reserve(&vbo->base, 0, 0, ((void*)0));
  vmw_bo_pin_reserved(vbo, 0);
  ttm_bo_unreserve(&vbo->base);
 }

 vmw_resource_unreserve(res, 0, 0, 0, ((void*)0), 0UL);

 mutex_unlock(&dev_priv->cmdbuf_mutex);
 ttm_read_unlock(&dev_priv->reservation_sem);
}
