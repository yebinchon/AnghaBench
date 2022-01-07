
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int sb_lock; } ;


 scalar_t__ COND ;
 int DRM_DEBUG_KMS (char*) ;
 int WARN_ON_ONCE (int) ;
 int _wait_for (scalar_t__,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int wait_for_atomic (scalar_t__,int) ;

int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
        u32 reply_mask, u32 reply, int timeout_base_ms)
{
 u32 status;
 int ret;

 mutex_lock(&i915->sb_lock);
 if (skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)) {
  ret = 0;
  goto out;
 }
 ret = _wait_for(skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status), timeout_base_ms * 1000, 10, 10);
 if (!ret)
  goto out;
 DRM_DEBUG_KMS("PCODE timeout, retrying with preemption disabled\n");
 WARN_ON_ONCE(timeout_base_ms > 3);
 preempt_disable();
 ret = wait_for_atomic(skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status), 50);
 preempt_enable();

out:
 mutex_unlock(&i915->sb_lock);
 return ret ? ret : status;

}
