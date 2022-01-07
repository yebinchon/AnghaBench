
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {int bo_list; int ticket; } ;
struct vmw_fence_obj {int dummy; } ;


 int ttm_eu_fence_buffer_objects (int *,int *,void*) ;

__attribute__((used)) static inline void
vmw_validation_bo_fence(struct vmw_validation_context *ctx,
   struct vmw_fence_obj *fence)
{
 ttm_eu_fence_buffer_objects(&ctx->ticket, &ctx->bo_list,
        (void *) fence);
}
