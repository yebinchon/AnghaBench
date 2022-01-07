
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {scalar_t__ csc_enable; scalar_t__ gamma_enable; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DISPPLANE_GAMMA_ENABLE ;
 int DISPPLANE_PIPE_CSC_ENABLE ;
 int DISPPLANE_SEL_PIPE (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static u32 i9xx_plane_ctl_crtc(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 u32 dspcntr = 0;

 if (crtc_state->gamma_enable)
  dspcntr |= DISPPLANE_GAMMA_ENABLE;

 if (crtc_state->csc_enable)
  dspcntr |= DISPPLANE_PIPE_CSC_ENABLE;

 if (INTEL_GEN(dev_priv) < 5)
  dspcntr |= DISPPLANE_SEL_PIPE(crtc->pipe);

 return dspcntr;
}
