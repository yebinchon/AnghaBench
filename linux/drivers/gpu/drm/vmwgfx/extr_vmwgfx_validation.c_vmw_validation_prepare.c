
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {struct mutex* res_mutex; } ;
struct mutex {int dummy; } ;


 int ERESTARTSYS ;
 int mutex_lock (struct mutex*) ;
 int mutex_lock_interruptible (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int vmw_validation_bo_backoff (struct vmw_validation_context*) ;
 int vmw_validation_bo_reserve (struct vmw_validation_context*,int) ;
 int vmw_validation_bo_validate (struct vmw_validation_context*,int) ;
 int vmw_validation_res_reserve (struct vmw_validation_context*,int) ;
 int vmw_validation_res_unreserve (struct vmw_validation_context*,int) ;
 int vmw_validation_res_validate (struct vmw_validation_context*,int) ;

int vmw_validation_prepare(struct vmw_validation_context *ctx,
      struct mutex *mutex,
      bool intr)
{
 int ret = 0;

 if (mutex) {
  if (intr)
   ret = mutex_lock_interruptible(mutex);
  else
   mutex_lock(mutex);
  if (ret)
   return -ERESTARTSYS;
 }

 ctx->res_mutex = mutex;
 ret = vmw_validation_res_reserve(ctx, intr);
 if (ret)
  goto out_no_res_reserve;

 ret = vmw_validation_bo_reserve(ctx, intr);
 if (ret)
  goto out_no_bo_reserve;

 ret = vmw_validation_bo_validate(ctx, intr);
 if (ret)
  goto out_no_validate;

 ret = vmw_validation_res_validate(ctx, intr);
 if (ret)
  goto out_no_validate;

 return 0;

out_no_validate:
 vmw_validation_bo_backoff(ctx);
out_no_bo_reserve:
 vmw_validation_res_unreserve(ctx, 1);
out_no_res_reserve:
 if (mutex)
  mutex_unlock(mutex);

 return ret;
}
