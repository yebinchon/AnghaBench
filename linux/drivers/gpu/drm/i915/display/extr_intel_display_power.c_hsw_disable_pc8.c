
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ HAS_PCH_LPT_LP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PCH_LP_PARTITION_LEVEL_DISABLE ;
 int SOUTH_DSPCLK_GATE_D ;
 int hsw_restore_lcpll (struct drm_i915_private*) ;
 int intel_init_pch_refclk (struct drm_i915_private*) ;

__attribute__((used)) static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
{
 u32 val;

 DRM_DEBUG_KMS("Disabling package C8+\n");

 hsw_restore_lcpll(dev_priv);
 intel_init_pch_refclk(dev_priv);

 if (HAS_PCH_LPT_LP(dev_priv)) {
  val = I915_READ(SOUTH_DSPCLK_GATE_D);
  val |= PCH_LP_PARTITION_LEVEL_DISABLE;
  I915_WRITE(SOUTH_DSPCLK_GATE_D, val);
 }
}
