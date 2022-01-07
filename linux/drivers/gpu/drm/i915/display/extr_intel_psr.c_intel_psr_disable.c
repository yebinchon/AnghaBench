
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct intel_crtc_state {int has_psr; } ;
struct TYPE_2__ {int work; int lock; } ;
struct drm_i915_private {TYPE_1__ psr; } ;


 int CAN_PSR (struct drm_i915_private*) ;
 scalar_t__ WARN_ON (int) ;
 int cancel_work_sync (int *) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_psr_disable_locked (struct intel_dp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_psr_disable(struct intel_dp *intel_dp,
         const struct intel_crtc_state *old_crtc_state)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 if (!old_crtc_state->has_psr)
  return;

 if (WARN_ON(!CAN_PSR(dev_priv)))
  return;

 mutex_lock(&dev_priv->psr.lock);

 intel_psr_disable_locked(intel_dp);

 mutex_unlock(&dev_priv->psr.lock);
 cancel_work_sync(&dev_priv->psr.work);
}
