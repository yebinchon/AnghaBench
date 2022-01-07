
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int want_panel_vdd; int panel_power_up_delay; int panel_vdd_work; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int pps_mutex; } ;
typedef int i915_reg_t ;


 int DRM_DEBUG_KMS (char*,int ,...) ;
 int EDP_FORCE_VDD ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int _pp_ctrl_reg (struct intel_dp*) ;
 int _pp_stat_reg (struct intel_dp*) ;
 int cancel_delayed_work (int *) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int edp_have_panel_power (struct intel_dp*) ;
 scalar_t__ edp_have_panel_vdd (struct intel_dp*) ;
 int intel_aux_power_domain (struct intel_digital_port*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int ironlake_get_pp_control (struct intel_dp*) ;
 int lockdep_assert_held (int *) ;
 int msleep (int ) ;
 int port_name (int ) ;
 int wait_panel_power_cycle (struct intel_dp*) ;

__attribute__((used)) static bool edp_panel_vdd_on(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 u32 pp;
 i915_reg_t pp_stat_reg, pp_ctrl_reg;
 bool need_to_disable = !intel_dp->want_panel_vdd;

 lockdep_assert_held(&dev_priv->pps_mutex);

 if (!intel_dp_is_edp(intel_dp))
  return 0;

 cancel_delayed_work(&intel_dp->panel_vdd_work);
 intel_dp->want_panel_vdd = 1;

 if (edp_have_panel_vdd(intel_dp))
  return need_to_disable;

 intel_display_power_get(dev_priv,
    intel_aux_power_domain(intel_dig_port));

 DRM_DEBUG_KMS("Turning eDP port %c VDD on\n",
        port_name(intel_dig_port->base.port));

 if (!edp_have_panel_power(intel_dp))
  wait_panel_power_cycle(intel_dp);

 pp = ironlake_get_pp_control(intel_dp);
 pp |= EDP_FORCE_VDD;

 pp_stat_reg = _pp_stat_reg(intel_dp);
 pp_ctrl_reg = _pp_ctrl_reg(intel_dp);

 I915_WRITE(pp_ctrl_reg, pp);
 POSTING_READ(pp_ctrl_reg);
 DRM_DEBUG_KMS("PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
   I915_READ(pp_stat_reg), I915_READ(pp_ctrl_reg));



 if (!edp_have_panel_power(intel_dp)) {
  DRM_DEBUG_KMS("eDP port %c panel power wasn't enabled\n",
         port_name(intel_dig_port->base.port));
  msleep(intel_dp->panel_power_up_delay);
 }

 return need_to_disable;
}
