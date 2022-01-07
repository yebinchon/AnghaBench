
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int want_panel_vdd; int panel_power_off_time; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int pps_mutex; } ;
typedef int i915_reg_t ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int EDP_BLC_ENABLE ;
 int EDP_FORCE_VDD ;
 int I915_WRITE (int ,int) ;
 int PANEL_POWER_ON ;
 int PANEL_POWER_RESET ;
 int POSTING_READ (int ) ;
 int WARN (int,char*,int ) ;
 int _pp_ctrl_reg (struct intel_dp*) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_aux_power_domain (struct intel_digital_port*) ;
 int intel_display_power_put_unchecked (struct drm_i915_private*,int ) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int ironlake_get_pp_control (struct intel_dp*) ;
 int ktime_get_boottime () ;
 int lockdep_assert_held (int *) ;
 int port_name (int ) ;
 int wait_panel_off (struct intel_dp*) ;

__attribute__((used)) static void edp_panel_off(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 u32 pp;
 i915_reg_t pp_ctrl_reg;

 lockdep_assert_held(&dev_priv->pps_mutex);

 if (!intel_dp_is_edp(intel_dp))
  return;

 DRM_DEBUG_KMS("Turn eDP port %c panel power off\n",
        port_name(dig_port->base.port));

 WARN(!intel_dp->want_panel_vdd, "Need eDP port %c VDD to turn off panel\n",
      port_name(dig_port->base.port));

 pp = ironlake_get_pp_control(intel_dp);


 pp &= ~(PANEL_POWER_ON | PANEL_POWER_RESET | EDP_FORCE_VDD |
  EDP_BLC_ENABLE);

 pp_ctrl_reg = _pp_ctrl_reg(intel_dp);

 intel_dp->want_panel_vdd = 0;

 I915_WRITE(pp_ctrl_reg, pp);
 POSTING_READ(pp_ctrl_reg);

 wait_panel_off(intel_dp);
 intel_dp->panel_power_off_time = ktime_get_boottime();


 intel_display_power_put_unchecked(dev_priv, intel_aux_power_domain(dig_port));
}
