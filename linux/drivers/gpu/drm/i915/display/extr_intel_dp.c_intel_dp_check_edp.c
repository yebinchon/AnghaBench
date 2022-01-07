
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int I915_READ (int ) ;
 int WARN (int,char*) ;
 int _pp_ctrl_reg (struct intel_dp*) ;
 int _pp_stat_reg (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int edp_have_panel_power (struct intel_dp*) ;
 int edp_have_panel_vdd (struct intel_dp*) ;
 int intel_dp_is_edp (struct intel_dp*) ;

__attribute__((used)) static void
intel_dp_check_edp(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 if (!intel_dp_is_edp(intel_dp))
  return;

 if (!edp_have_panel_power(intel_dp) && !edp_have_panel_vdd(intel_dp)) {
  WARN(1, "eDP powered off while attempting aux channel communication.\n");
  DRM_DEBUG_KMS("Status 0x%08x Control 0x%08x\n",
         I915_READ(_pp_stat_reg(intel_dp)),
         I915_READ(_pp_ctrl_reg(intel_dp)));
 }
}
