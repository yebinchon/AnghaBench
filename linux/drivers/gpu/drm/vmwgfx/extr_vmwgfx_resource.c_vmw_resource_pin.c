
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {scalar_t__ pin_count; TYPE_1__* func; struct vmw_buffer_object* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int reservation_sem; int cmdbuf_mutex; } ;
struct vmw_buffer_object {int base; int pin_count; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_2__ {int backup_placement; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ttm_bo_reserve (int *,int,int,int *) ;
 int ttm_bo_unreserve (int *) ;
 int ttm_bo_validate (int *,int ,struct ttm_operation_ctx*) ;
 int ttm_write_lock (int *,int) ;
 int ttm_write_unlock (int *) ;
 int vmw_bo_pin_reserved (struct vmw_buffer_object*,int) ;
 int vmw_resource_reserve (struct vmw_resource*,int,int) ;
 int vmw_resource_unreserve (struct vmw_resource*,int,int,int,int *,unsigned long) ;
 int vmw_resource_validate (struct vmw_resource*,int) ;

int vmw_resource_pin(struct vmw_resource *res, bool interruptible)
{
 struct ttm_operation_ctx ctx = { interruptible, 0 };
 struct vmw_private *dev_priv = res->dev_priv;
 int ret;

 ttm_write_lock(&dev_priv->reservation_sem, interruptible);
 mutex_lock(&dev_priv->cmdbuf_mutex);
 ret = vmw_resource_reserve(res, interruptible, 0);
 if (ret)
  goto out_no_reserve;

 if (res->pin_count == 0) {
  struct vmw_buffer_object *vbo = ((void*)0);

  if (res->backup) {
   vbo = res->backup;

   ttm_bo_reserve(&vbo->base, interruptible, 0, ((void*)0));
   if (!vbo->pin_count) {
    ret = ttm_bo_validate
     (&vbo->base,
      res->func->backup_placement,
      &ctx);
    if (ret) {
     ttm_bo_unreserve(&vbo->base);
     goto out_no_validate;
    }
   }


   vmw_bo_pin_reserved(vbo, 1);
  }
  ret = vmw_resource_validate(res, interruptible);
  if (vbo)
   ttm_bo_unreserve(&vbo->base);
  if (ret)
   goto out_no_validate;
 }
 res->pin_count++;

out_no_validate:
 vmw_resource_unreserve(res, 0, 0, 0, ((void*)0), 0UL);
out_no_reserve:
 mutex_unlock(&dev_priv->cmdbuf_mutex);
 ttm_write_unlock(&dev_priv->reservation_sem);

 return ret;
}
