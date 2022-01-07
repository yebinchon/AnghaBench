
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct intel_crtc_state {int has_psr; } ;
struct TYPE_4__ {int lock; int debug; } ;
struct TYPE_3__ {int dp; } ;
struct drm_i915_private {TYPE_2__ psr; TYPE_1__ drrs; } ;


 int CAN_PSR (struct drm_i915_private*) ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ WARN_ON (int) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_psr_enable_locked (struct drm_i915_private*,struct intel_crtc_state const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psr_global_enabled (int ) ;

void intel_psr_enable(struct intel_dp *intel_dp,
        const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 if (!crtc_state->has_psr)
  return;

 if (WARN_ON(!CAN_PSR(dev_priv)))
  return;

 WARN_ON(dev_priv->drrs.dp);

 mutex_lock(&dev_priv->psr.lock);

 if (!psr_global_enabled(dev_priv->psr.debug)) {
  DRM_DEBUG_KMS("PSR disabled by flag\n");
  goto unlock;
 }

 intel_psr_enable_locked(dev_priv, crtc_state);

unlock:
 mutex_unlock(&dev_priv->psr.lock);
}
