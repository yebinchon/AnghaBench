
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int hpll_freq; } ;


 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;

__attribute__((used)) static int vlv_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
{
 int freq_320 = (dev_priv->hpll_freq << 1) % 320000 != 0 ?
  333333 : 320000;






 if (IS_VALLEYVIEW(dev_priv) && min_cdclk > freq_320)
  return 400000;
 else if (min_cdclk > 266667)
  return freq_320;
 else if (min_cdclk > 0)
  return 266667;
 else
  return 200000;
}
