
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_fence_context {int event; int spinlock; int completed_fence; } ;


 int max (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

void msm_update_fence(struct msm_fence_context *fctx, uint32_t fence)
{
 spin_lock(&fctx->spinlock);
 fctx->completed_fence = max(fence, fctx->completed_fence);
 spin_unlock(&fctx->spinlock);

 wake_up_all(&fctx->event);
}
