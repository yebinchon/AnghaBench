
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct intel_digital_port {int dummy; } ;
struct drm_i915_private {int pps_mutex; } ;


 int DRM_DEBUG_KMS (char*) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int edp_have_panel_vdd (struct intel_dp*) ;
 int edp_panel_vdd_schedule_off (struct intel_dp*) ;
 int intel_aux_power_domain (struct intel_digital_port*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void intel_edp_panel_vdd_sanitize(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);

 lockdep_assert_held(&dev_priv->pps_mutex);

 if (!edp_have_panel_vdd(intel_dp))
  return;







 DRM_DEBUG_KMS("VDD left on by BIOS, adjusting state tracking\n");
 intel_display_power_get(dev_priv, intel_aux_power_domain(dig_port));

 edp_panel_vdd_schedule_off(intel_dp);
}
