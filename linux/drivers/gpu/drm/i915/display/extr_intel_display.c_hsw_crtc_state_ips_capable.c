
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {int pipe_bpp; int pixel_rate; TYPE_1__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int max_cdclk_freq; } ;
struct TYPE_6__ {int enable_ips; } ;


 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 int hsw_crtc_supports_ips (struct intel_crtc*) ;
 TYPE_3__ i915_modparams ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);


 if (!hsw_crtc_supports_ips(crtc))
  return 0;

 if (!i915_modparams.enable_ips)
  return 0;

 if (crtc_state->pipe_bpp > 24)
  return 0;
 if (IS_BROADWELL(dev_priv) &&
     crtc_state->pixel_rate > dev_priv->max_cdclk_freq * 95 / 100)
  return 0;

 return 1;
}
