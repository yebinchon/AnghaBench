
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int count; } ;
struct drm_i915_private {int dummy; } ;


 int intel_power_well_enable (struct drm_i915_private*,struct i915_power_well*) ;

__attribute__((used)) static void intel_power_well_get(struct drm_i915_private *dev_priv,
     struct i915_power_well *power_well)
{
 if (!power_well->count++)
  intel_power_well_enable(dev_priv, power_well);
}
