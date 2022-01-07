
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int aux; } ;
struct i915_psr {int sink_not_reliable; int lock; struct intel_dp* dp; int enabled; } ;
struct drm_i915_private {struct i915_psr psr; } ;


 int CAN_PSR (struct drm_i915_private*) ;
 int DP_PSR_ERROR_STATUS ;
 int DP_PSR_LINK_CRC_ERROR ;
 int DP_PSR_RFB_STORAGE_ERROR ;
 int DP_PSR_SINK_INTERNAL_ERROR ;
 int DP_PSR_SINK_STATE_MASK ;
 int DP_PSR_STATUS ;
 int DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,...) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 int drm_dp_dpcd_writeb (int *,int ,int) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int intel_psr_disable_locked (struct intel_dp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_psr_short_pulse(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct i915_psr *psr = &dev_priv->psr;
 u8 val;
 const u8 errors = DP_PSR_RFB_STORAGE_ERROR |
     DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR |
     DP_PSR_LINK_CRC_ERROR;

 if (!CAN_PSR(dev_priv) || !intel_dp_is_edp(intel_dp))
  return;

 mutex_lock(&psr->lock);

 if (!psr->enabled || psr->dp != intel_dp)
  goto exit;

 if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val) != 1) {
  DRM_ERROR("PSR_STATUS dpcd read failed\n");
  goto exit;
 }

 if ((val & DP_PSR_SINK_STATE_MASK) == DP_PSR_SINK_INTERNAL_ERROR) {
  DRM_DEBUG_KMS("PSR sink internal error, disabling PSR\n");
  intel_psr_disable_locked(intel_dp);
  psr->sink_not_reliable = 1;
 }

 if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_ERROR_STATUS, &val) != 1) {
  DRM_ERROR("PSR_ERROR_STATUS dpcd read failed\n");
  goto exit;
 }

 if (val & DP_PSR_RFB_STORAGE_ERROR)
  DRM_DEBUG_KMS("PSR RFB storage error, disabling PSR\n");
 if (val & DP_PSR_VSC_SDP_UNCORRECTABLE_ERROR)
  DRM_DEBUG_KMS("PSR VSC SDP uncorrectable error, disabling PSR\n");
 if (val & DP_PSR_LINK_CRC_ERROR)
  DRM_ERROR("PSR Link CRC error, disabling PSR\n");

 if (val & ~errors)
  DRM_ERROR("PSR_ERROR_STATUS unhandled errors %x\n",
     val & ~errors);
 if (val & errors) {
  intel_psr_disable_locked(intel_dp);
  psr->sink_not_reliable = 1;
 }

 drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_ERROR_STATUS, val);
exit:
 mutex_unlock(&psr->lock);
}
