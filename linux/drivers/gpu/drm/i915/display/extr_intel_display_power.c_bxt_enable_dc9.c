
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DC_STATE_EN_DC9 ;
 int DRM_DEBUG_KMS (char*) ;
 int HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int assert_can_enable_dc9 (struct drm_i915_private*) ;
 int gen9_set_dc_state (struct drm_i915_private*,int ) ;
 int intel_power_sequencer_reset (struct drm_i915_private*) ;

__attribute__((used)) static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
{
 assert_can_enable_dc9(dev_priv);

 DRM_DEBUG_KMS("Enabling DC9\n");





 if (!HAS_PCH_SPLIT(dev_priv))
  intel_power_sequencer_reset(dev_priv);
 gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
}
