
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int enable; TYPE_1__* crtc; } ;
struct intel_crtc_state {int port_clock; int lane_count; scalar_t__ has_audio; int pixel_rate; TYPE_2__ base; } ;
struct drm_i915_private {int max_cdclk_freq; } ;
struct TYPE_3__ {int dev; } ;


 int DIV_ROUND_UP (int,int) ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int EINVAL ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_DSI ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 scalar_t__ hsw_crtc_state_ips_capable (struct intel_crtc_state const*) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_pixel_rate_to_cdclk (struct drm_i915_private*,int ) ;
 int max (int,int) ;
 struct drm_i915_private* to_i915 (int ) ;

int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv =
  to_i915(crtc_state->base.crtc->dev);
 int min_cdclk;

 if (!crtc_state->base.enable)
  return 0;

 min_cdclk = intel_pixel_rate_to_cdclk(dev_priv, crtc_state->pixel_rate);


 if (IS_BROADWELL(dev_priv) && hsw_crtc_state_ips_capable(crtc_state))
  min_cdclk = DIV_ROUND_UP(min_cdclk * 100, 95);






 if (intel_crtc_has_dp_encoder(crtc_state) &&
     crtc_state->has_audio &&
     crtc_state->port_clock >= 540000 &&
     crtc_state->lane_count == 4) {
  if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {

   min_cdclk = max(316800, min_cdclk);
  } else if (IS_GEN(dev_priv, 9) || IS_BROADWELL(dev_priv)) {

   min_cdclk = max(432000, min_cdclk);
  }
 }





 if (crtc_state->has_audio && INTEL_GEN(dev_priv) >= 9)
  min_cdclk = max(2 * 96000, min_cdclk);
 if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
     intel_crtc_has_dp_encoder(crtc_state) && crtc_state->has_audio)
  min_cdclk = max(crtc_state->port_clock, min_cdclk);





 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
     IS_VALLEYVIEW(dev_priv))
  min_cdclk = max(320000, min_cdclk);






 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
     IS_GEMINILAKE(dev_priv))
  min_cdclk = max(158400, min_cdclk);

 if (min_cdclk > dev_priv->max_cdclk_freq) {
  DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d kHz)\n",
         min_cdclk, dev_priv->max_cdclk_freq);
  return -EINVAL;
 }

 return min_cdclk;
}
