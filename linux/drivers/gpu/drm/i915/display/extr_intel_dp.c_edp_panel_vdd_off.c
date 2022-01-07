
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int want_panel_vdd; } ;
struct drm_i915_private {int pps_mutex; } ;
struct TYPE_3__ {int port; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int I915_STATE_WARN (int,char*,int ) ;
 TYPE_2__* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int edp_panel_vdd_off_sync (struct intel_dp*) ;
 int edp_panel_vdd_schedule_off (struct intel_dp*) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int lockdep_assert_held (int *) ;
 int port_name (int ) ;

__attribute__((used)) static void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 lockdep_assert_held(&dev_priv->pps_mutex);

 if (!intel_dp_is_edp(intel_dp))
  return;

 I915_STATE_WARN(!intel_dp->want_panel_vdd, "eDP port %c VDD not forced on",
      port_name(dp_to_dig_port(intel_dp)->base.port));

 intel_dp->want_panel_vdd = 0;

 if (sync)
  edp_panel_vdd_off_sync(intel_dp);
 else
  edp_panel_vdd_schedule_off(intel_dp);
}
