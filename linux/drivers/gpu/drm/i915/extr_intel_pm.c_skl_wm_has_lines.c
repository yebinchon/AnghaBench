
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;

__attribute__((used)) static bool skl_wm_has_lines(struct drm_i915_private *dev_priv, int level)
{
 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  return 1;


 return level > 0;
}
