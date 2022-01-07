
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_5__ {int mode; int crtc; } ;
struct intel_crtc_state {int pipe_src_w; int pipe_src_h; TYPE_3__ pch_pfit; TYPE_2__ base; } ;
struct TYPE_4__ {int mode; int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int PIPESRC (int ) ;
 int icl_set_pipe_chicken (struct intel_crtc*) ;
 int ironlake_pfit_disable (struct intel_crtc_state const*) ;
 int ironlake_pfit_enable (struct intel_crtc_state const*) ;
 int skl_detach_scalers (struct intel_crtc_state const*) ;
 int skylake_pfit_enable (struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_update_pipe_config(const struct intel_crtc_state *old_crtc_state,
         const struct intel_crtc_state *new_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);


 crtc->base.mode = new_crtc_state->base.mode;
 I915_WRITE(PIPESRC(crtc->pipe),
     ((new_crtc_state->pipe_src_w - 1) << 16) |
     (new_crtc_state->pipe_src_h - 1));


 if (INTEL_GEN(dev_priv) >= 9) {
  skl_detach_scalers(new_crtc_state);

  if (new_crtc_state->pch_pfit.enabled)
   skylake_pfit_enable(new_crtc_state);
 } else if (HAS_PCH_SPLIT(dev_priv)) {
  if (new_crtc_state->pch_pfit.enabled)
   ironlake_pfit_enable(new_crtc_state);
  else if (old_crtc_state->pch_pfit.enabled)
   ironlake_pfit_disable(old_crtc_state);
 }

 if (INTEL_GEN(dev_priv) >= 11)
  icl_set_pipe_chicken(crtc);
}
