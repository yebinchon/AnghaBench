
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int gen9_disable_dc_states (struct drm_i915_private*) ;

__attribute__((used)) static void gen9_dc_off_power_well_enable(struct drm_i915_private *dev_priv,
       struct i915_power_well *power_well)
{
 gen9_disable_dc_states(dev_priv);
}
