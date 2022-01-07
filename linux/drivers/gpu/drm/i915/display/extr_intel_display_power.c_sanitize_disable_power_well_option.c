
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;



__attribute__((used)) static int
sanitize_disable_power_well_option(const struct drm_i915_private *dev_priv,
       int disable_power_well)
{
 if (disable_power_well >= 0)
  return !!disable_power_well;

 return 1;
}
