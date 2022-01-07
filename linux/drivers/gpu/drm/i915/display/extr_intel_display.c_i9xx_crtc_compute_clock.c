
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_limit {int dummy; } ;
struct intel_crtc_state {int dpll; int port_clock; int clock_set; int dpll_hw_state; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct TYPE_3__ {int lvds_ssc_freq; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int INTEL_OUTPUT_LVDS ;
 int i9xx_compute_dpll (struct intel_crtc*,struct intel_crtc_state*,int *) ;
 int i9xx_find_best_dpll (struct intel_limit const*,struct intel_crtc_state*,int ,int,int *,int *) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 struct intel_limit intel_limits_i9xx_lvds ;
 struct intel_limit intel_limits_i9xx_sdvo ;
 scalar_t__ intel_panel_use_ssc (struct drm_i915_private*) ;
 int memset (int *,int ,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static int i9xx_crtc_compute_clock(struct intel_crtc *crtc,
       struct intel_crtc_state *crtc_state)
{
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 const struct intel_limit *limit;
 int refclk = 96000;

 memset(&crtc_state->dpll_hw_state, 0,
        sizeof(crtc_state->dpll_hw_state));

 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
  if (intel_panel_use_ssc(dev_priv)) {
   refclk = dev_priv->vbt.lvds_ssc_freq;
   DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
  }

  limit = &intel_limits_i9xx_lvds;
 } else {
  limit = &intel_limits_i9xx_sdvo;
 }

 if (!crtc_state->clock_set &&
     !i9xx_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
     refclk, ((void*)0), &crtc_state->dpll)) {
  DRM_ERROR("Couldn't find PLL settings for mode!\n");
  return -EINVAL;
 }

 i9xx_compute_dpll(crtc, crtc_state, ((void*)0));

 return 0;
}
