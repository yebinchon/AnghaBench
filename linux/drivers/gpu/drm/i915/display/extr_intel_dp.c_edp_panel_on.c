
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int last_power_on; } ;
struct drm_i915_private {int pps_mutex; } ;
typedef int i915_reg_t ;
struct TYPE_3__ {int port; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int PANEL_POWER_ON ;
 int PANEL_POWER_RESET ;
 int POSTING_READ (int ) ;
 scalar_t__ WARN (int ,char*,int ) ;
 int _pp_ctrl_reg (struct intel_dp*) ;
 TYPE_2__* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int edp_have_panel_power (struct intel_dp*) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int ironlake_get_pp_control (struct intel_dp*) ;
 int jiffies ;
 int lockdep_assert_held (int *) ;
 int port_name (int ) ;
 int wait_panel_on (struct intel_dp*) ;
 int wait_panel_power_cycle (struct intel_dp*) ;

__attribute__((used)) static void edp_panel_on(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 u32 pp;
 i915_reg_t pp_ctrl_reg;

 lockdep_assert_held(&dev_priv->pps_mutex);

 if (!intel_dp_is_edp(intel_dp))
  return;

 DRM_DEBUG_KMS("Turn eDP port %c panel power on\n",
        port_name(dp_to_dig_port(intel_dp)->base.port));

 if (WARN(edp_have_panel_power(intel_dp),
   "eDP port %c panel power already on\n",
   port_name(dp_to_dig_port(intel_dp)->base.port)))
  return;

 wait_panel_power_cycle(intel_dp);

 pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 pp = ironlake_get_pp_control(intel_dp);
 if (IS_GEN(dev_priv, 5)) {

  pp &= ~PANEL_POWER_RESET;
  I915_WRITE(pp_ctrl_reg, pp);
  POSTING_READ(pp_ctrl_reg);
 }

 pp |= PANEL_POWER_ON;
 if (!IS_GEN(dev_priv, 5))
  pp |= PANEL_POWER_RESET;

 I915_WRITE(pp_ctrl_reg, pp);
 POSTING_READ(pp_ctrl_reg);

 wait_panel_on(intel_dp);
 intel_dp->last_power_on = jiffies;

 if (IS_GEN(dev_priv, 5)) {
  pp |= PANEL_POWER_RESET;
  I915_WRITE(pp_ctrl_reg, pp);
  POSTING_READ(pp_ctrl_reg);
 }
}
