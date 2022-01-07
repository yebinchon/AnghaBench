
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int hpll_freq; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;

__attribute__((used)) static u8 vlv_calc_voltage_level(struct drm_i915_private *dev_priv, int cdclk)
{
 if (IS_VALLEYVIEW(dev_priv)) {
  if (cdclk >= 320000)
   return 2;
  else if (cdclk >= 266667)
   return 1;
  else
   return 0;
 } else {





  return DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1, cdclk) - 1;
 }
}
