
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int crtc_clock; } ;
struct TYPE_6__ {TYPE_2__ adjusted_mode; TYPE_1__* crtc; } ;
struct intel_crtc_state {int pixel_rate; TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int ilk_pipe_pixel_rate (struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);

 if (HAS_GMCH(dev_priv))

  crtc_state->pixel_rate =
   crtc_state->base.adjusted_mode.crtc_clock;
 else
  crtc_state->pixel_rate =
   ilk_pipe_pixel_rate(crtc_state);
}
