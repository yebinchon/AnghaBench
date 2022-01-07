
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int pps_reset; } ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ backlight; } ;
struct drm_i915_private {int pps_mutex; TYPE_2__ vbt; } ;


 int WARN_ON (int) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer_registers (struct intel_dp*,int) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int
bxt_power_sequencer_idx(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 int backlight_controller = dev_priv->vbt.backlight.controller;

 lockdep_assert_held(&dev_priv->pps_mutex);


 WARN_ON(!intel_dp_is_edp(intel_dp));

 if (!intel_dp->pps_reset)
  return backlight_controller;

 intel_dp->pps_reset = 0;





 intel_dp_init_panel_power_sequencer_registers(intel_dp, 0);

 return backlight_controller;
}
