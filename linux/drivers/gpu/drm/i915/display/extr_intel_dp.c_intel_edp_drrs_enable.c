
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct intel_crtc_state {int has_drrs; } ;
struct TYPE_4__ {int mutex; struct intel_dp* dp; scalar_t__ busy_frontbuffer_bits; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct drm_i915_private {TYPE_2__ drrs; TYPE_1__ psr; } ;


 int DRM_DEBUG_KMS (char*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_edp_drrs_enable(struct intel_dp *intel_dp,
      const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 if (!crtc_state->has_drrs) {
  DRM_DEBUG_KMS("Panel doesn't support DRRS\n");
  return;
 }

 if (dev_priv->psr.enabled) {
  DRM_DEBUG_KMS("PSR enabled. Not enabling DRRS.\n");
  return;
 }

 mutex_lock(&dev_priv->drrs.mutex);
 if (dev_priv->drrs.dp) {
  DRM_DEBUG_KMS("DRRS already enabled\n");
  goto unlock;
 }

 dev_priv->drrs.busy_frontbuffer_bits = 0;

 dev_priv->drrs.dp = intel_dp;

unlock:
 mutex_unlock(&dev_priv->drrs.mutex);
}
