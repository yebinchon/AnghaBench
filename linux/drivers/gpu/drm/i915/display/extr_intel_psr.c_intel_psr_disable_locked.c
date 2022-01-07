
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int aux; } ;
struct TYPE_2__ {int enabled; scalar_t__ psr2_enabled; int lock; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
typedef int i915_reg_t ;


 int DP_PSR_EN_CFG ;
 int DRM_DEBUG_KMS (char*,char*) ;
 int DRM_ERROR (char*) ;
 int EDP_PSR2_STATUS ;
 int EDP_PSR2_STATUS_STATE_MASK ;
 int EDP_PSR_STATUS ;
 int EDP_PSR_STATUS_STATE_MASK ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int drm_dp_dpcd_writeb (int *,int ,int ) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;
 int intel_psr_exit (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void intel_psr_disable_locked(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 i915_reg_t psr_status;
 u32 psr_status_mask;

 lockdep_assert_held(&dev_priv->psr.lock);

 if (!dev_priv->psr.enabled)
  return;

 DRM_DEBUG_KMS("Disabling PSR%s\n",
        dev_priv->psr.psr2_enabled ? "2" : "1");

 intel_psr_exit(dev_priv);

 if (dev_priv->psr.psr2_enabled) {
  psr_status = EDP_PSR2_STATUS;
  psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 } else {
  psr_status = EDP_PSR_STATUS;
  psr_status_mask = EDP_PSR_STATUS_STATE_MASK;
 }


 if (intel_de_wait_for_clear(dev_priv, psr_status,
        psr_status_mask, 2000))
  DRM_ERROR("Timed out waiting PSR idle state\n");


 drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);

 dev_priv->psr.enabled = 0;
}
