
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct msm_fence_context {scalar_t__ last_fence; int completed_fence; int event; int name; } ;
typedef int ktime_t ;


 int DBG (char*,scalar_t__,int ) ;
 int DRM_ERROR (char*,int ,scalar_t__,scalar_t__) ;
 int EBUSY ;
 int EINVAL ;
 int ERESTARTSYS ;
 int ETIMEDOUT ;
 scalar_t__ fence_completed (struct msm_fence_context*,scalar_t__) ;
 unsigned long timeout_to_jiffies (int *) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,unsigned long) ;
 int wait_event_timeout (int ,scalar_t__,unsigned long) ;

int msm_wait_fence(struct msm_fence_context *fctx, uint32_t fence,
  ktime_t *timeout, bool interruptible)
{
 int ret;

 if (fence > fctx->last_fence) {
  DRM_ERROR("%s: waiting on invalid fence: %u (of %u)\n",
    fctx->name, fence, fctx->last_fence);
  return -EINVAL;
 }

 if (!timeout) {

  ret = fence_completed(fctx, fence) ? 0 : -EBUSY;
 } else {
  unsigned long remaining_jiffies = timeout_to_jiffies(timeout);

  if (interruptible)
   ret = wait_event_interruptible_timeout(fctx->event,
    fence_completed(fctx, fence),
    remaining_jiffies);
  else
   ret = wait_event_timeout(fctx->event,
    fence_completed(fctx, fence),
    remaining_jiffies);

  if (ret == 0) {
   DBG("timeout waiting for fence: %u (completed: %u)",
     fence, fctx->completed_fence);
   ret = -ETIMEDOUT;
  } else if (ret != -ERESTARTSYS) {
   ret = 0;
  }
 }

 return ret;
}
