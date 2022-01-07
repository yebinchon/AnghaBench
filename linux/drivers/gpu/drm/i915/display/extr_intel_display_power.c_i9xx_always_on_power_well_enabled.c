
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;



__attribute__((used)) static bool i9xx_always_on_power_well_enabled(struct drm_i915_private *dev_priv,
          struct i915_power_well *power_well)
{
 return 1;
}
