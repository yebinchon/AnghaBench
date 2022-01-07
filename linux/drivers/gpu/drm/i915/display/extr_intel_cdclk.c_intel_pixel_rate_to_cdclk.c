
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;

__attribute__((used)) static int intel_pixel_rate_to_cdclk(struct drm_i915_private *dev_priv,
         int pixel_rate)
{
 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  return DIV_ROUND_UP(pixel_rate, 2);
 else if (IS_GEN(dev_priv, 9) ||
   IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
  return pixel_rate;
 else if (IS_CHERRYVIEW(dev_priv))
  return DIV_ROUND_UP(pixel_rate * 100, 95);
 else
  return DIV_ROUND_UP(pixel_rate * 100, 90);
}
