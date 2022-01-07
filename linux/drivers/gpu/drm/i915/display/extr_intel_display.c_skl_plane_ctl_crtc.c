
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {scalar_t__ csc_enable; scalar_t__ gamma_enable; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int PLANE_CTL_PIPE_CSC_ENABLE ;
 int PLANE_CTL_PIPE_GAMMA_ENABLE ;
 struct drm_i915_private* to_i915 (int ) ;

u32 skl_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 u32 plane_ctl = 0;

 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  return plane_ctl;

 if (crtc_state->gamma_enable)
  plane_ctl |= PLANE_CTL_PIPE_GAMMA_ENABLE;

 if (crtc_state->csc_enable)
  plane_ctl |= PLANE_CTL_PIPE_CSC_ENABLE;

 return plane_ctl;
}
