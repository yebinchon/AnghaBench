
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_limit {int dummy; } ;
struct intel_crtc_state {int dpll; int port_clock; int clock_set; int dpll_hw_state; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_4__ {int lvds_ssc_freq; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_LVDS ;
 int INTEL_OUTPUT_SDVO ;
 int g4x_find_best_dpll (struct intel_limit const*,struct intel_crtc_state*,int ,int,int *,int *) ;
 int i9xx_compute_dpll (struct intel_crtc*,struct intel_crtc_state*,int *) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 scalar_t__ intel_is_dual_link_lvds (struct drm_i915_private*) ;
 struct intel_limit intel_limits_g4x_dual_channel_lvds ;
 struct intel_limit intel_limits_g4x_hdmi ;
 struct intel_limit intel_limits_g4x_sdvo ;
 struct intel_limit intel_limits_g4x_single_channel_lvds ;
 struct intel_limit intel_limits_i9xx_sdvo ;
 scalar_t__ intel_panel_use_ssc (struct drm_i915_private*) ;
 int memset (int *,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int g4x_crtc_compute_clock(struct intel_crtc *crtc,
      struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 const struct intel_limit *limit;
 int refclk = 96000;

 memset(&crtc_state->dpll_hw_state, 0,
        sizeof(crtc_state->dpll_hw_state));

 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
  if (intel_panel_use_ssc(dev_priv)) {
   refclk = dev_priv->vbt.lvds_ssc_freq;
   DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
  }

  if (intel_is_dual_link_lvds(dev_priv))
   limit = &intel_limits_g4x_dual_channel_lvds;
  else
   limit = &intel_limits_g4x_single_channel_lvds;
 } else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
     intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
  limit = &intel_limits_g4x_hdmi;
 } else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO)) {
  limit = &intel_limits_g4x_sdvo;
 } else {

  limit = &intel_limits_i9xx_sdvo;
 }

 if (!crtc_state->clock_set &&
     !g4x_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
    refclk, ((void*)0), &crtc_state->dpll)) {
  DRM_ERROR("Couldn't find PLL settings for mode!\n");
  return -EINVAL;
 }

 i9xx_compute_dpll(crtc, crtc_state, ((void*)0));

 return 0;
}
