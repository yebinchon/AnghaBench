
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int reservation_sem; } ;
struct ttm_buffer_object {int dummy; } ;
struct vmw_buffer_object {struct ttm_buffer_object base; } ;


 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_pin_reserved (struct vmw_buffer_object*,int) ;

int vmw_bo_unpin(struct vmw_private *dev_priv,
   struct vmw_buffer_object *buf,
   bool interruptible)
{
 struct ttm_buffer_object *bo = &buf->base;
 int ret;

 ret = ttm_read_lock(&dev_priv->reservation_sem, interruptible);
 if (unlikely(ret != 0))
  return ret;

 ret = ttm_bo_reserve(bo, interruptible, 0, ((void*)0));
 if (unlikely(ret != 0))
  goto err;

 vmw_bo_pin_reserved(buf, 0);

 ttm_bo_unreserve(bo);

err:
 ttm_read_unlock(&dev_priv->reservation_sem);
 return ret;
}
