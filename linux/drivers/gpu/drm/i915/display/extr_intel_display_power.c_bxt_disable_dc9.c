
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DC_STATE_DISABLE ;
 int DRM_DEBUG_KMS (char*) ;
 int assert_can_disable_dc9 (struct drm_i915_private*) ;
 int gen9_set_dc_state (struct drm_i915_private*,int ) ;
 int intel_pps_unlock_regs_wa (struct drm_i915_private*) ;

__attribute__((used)) static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
{
 assert_can_disable_dc9(dev_priv);

 DRM_DEBUG_KMS("Disabling DC9\n");

 gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);

 intel_pps_unlock_regs_wa(dev_priv);
}
