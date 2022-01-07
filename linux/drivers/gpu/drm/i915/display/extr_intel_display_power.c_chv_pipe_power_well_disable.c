
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int chv_set_pipe_power_well (struct drm_i915_private*,struct i915_power_well*,int) ;
 int vlv_display_power_well_deinit (struct drm_i915_private*) ;

__attribute__((used)) static void chv_pipe_power_well_disable(struct drm_i915_private *dev_priv,
     struct i915_power_well *power_well)
{
 vlv_display_power_well_deinit(dev_priv);

 chv_set_pipe_power_well(dev_priv, power_well, 0);
}
