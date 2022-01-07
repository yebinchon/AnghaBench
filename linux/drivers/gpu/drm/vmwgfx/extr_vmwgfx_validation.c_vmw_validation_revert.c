
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {scalar_t__ res_mutex; } ;


 int mutex_unlock (scalar_t__) ;
 int vmw_validation_bo_backoff (struct vmw_validation_context*) ;
 int vmw_validation_res_unreserve (struct vmw_validation_context*,int) ;
 int vmw_validation_unref_lists (struct vmw_validation_context*) ;

void vmw_validation_revert(struct vmw_validation_context *ctx)
{
 vmw_validation_bo_backoff(ctx);
 vmw_validation_res_unreserve(ctx, 1);
 if (ctx->res_mutex)
  mutex_unlock(ctx->res_mutex);
 vmw_validation_unref_lists(ctx);
}
