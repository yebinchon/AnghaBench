
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int BXT_DSIA_16X_MASK ;
 int BXT_DSIC_16X_MASK ;
 int BXT_DSI_PLL_CTL ;
 int BXT_DSI_PLL_DO_ENABLE ;
 int BXT_DSI_PLL_ENABLE ;
 int BXT_DSI_PLL_LOCKED ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 int I915_READ (int ) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;

bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
{
 bool enabled;
 u32 val;
 u32 mask;

 mask = BXT_DSI_PLL_DO_ENABLE | BXT_DSI_PLL_LOCKED;
 val = I915_READ(BXT_DSI_PLL_ENABLE);
 enabled = (val & mask) == mask;

 if (!enabled)
  return 0;
 val = I915_READ(BXT_DSI_PLL_CTL);
 if (IS_GEMINILAKE(dev_priv)) {
  if (!(val & BXT_DSIA_16X_MASK)) {
   DRM_DEBUG_DRIVER("Invalid PLL divider (%08x)\n", val);
   enabled = 0;
  }
 } else {
  if (!(val & BXT_DSIA_16X_MASK) || !(val & BXT_DSIC_16X_MASK)) {
   DRM_DEBUG_DRIVER("Invalid PLL divider (%08x)\n", val);
   enabled = 0;
  }
 }

 return enabled;
}
