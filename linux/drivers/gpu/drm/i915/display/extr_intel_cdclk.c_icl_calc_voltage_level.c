
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;

__attribute__((used)) static u8 icl_calc_voltage_level(struct drm_i915_private *dev_priv, int cdclk)
{
 if (IS_ELKHARTLAKE(dev_priv)) {
  if (cdclk > 312000)
   return 2;
  else if (cdclk > 180000)
   return 1;
  else
   return 0;
 } else {
  if (cdclk > 556800)
   return 2;
  else if (cdclk > 312000)
   return 1;
  else
   return 0;
 }
}
