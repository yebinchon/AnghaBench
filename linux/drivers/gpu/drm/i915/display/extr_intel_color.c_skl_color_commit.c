
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int gamma_mode; scalar_t__ csc_enable; scalar_t__ gamma_enable; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int GAMMA_MODE (int) ;
 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int SKL_BOTTOM_COLOR (int) ;
 int SKL_BOTTOM_COLOR_CSC_ENABLE ;
 int SKL_BOTTOM_COLOR_GAMMA_ENABLE ;
 int icl_load_csc_matrix (struct intel_crtc_state const*) ;
 int ilk_load_csc_matrix (struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void skl_color_commit(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 u32 val = 0;






 if (crtc_state->gamma_enable)
  val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
 if (crtc_state->csc_enable)
  val |= SKL_BOTTOM_COLOR_CSC_ENABLE;
 I915_WRITE(SKL_BOTTOM_COLOR(pipe), val);

 I915_WRITE(GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);

 if (INTEL_GEN(dev_priv) >= 11)
  icl_load_csc_matrix(crtc_state);
 else
  ilk_load_csc_matrix(crtc_state);
}
