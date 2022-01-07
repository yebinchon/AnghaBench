
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer (struct intel_dp*) ;
 int intel_dp_init_panel_power_sequencer_registers (struct intel_dp*,int) ;
 int vlv_initial_power_sequencer_setup (struct intel_dp*) ;

__attribute__((used)) static void intel_dp_pps_init(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
  vlv_initial_power_sequencer_setup(intel_dp);
 } else {
  intel_dp_init_panel_power_sequencer(intel_dp);
  intel_dp_init_panel_power_sequencer_registers(intel_dp, 0);
 }
}
