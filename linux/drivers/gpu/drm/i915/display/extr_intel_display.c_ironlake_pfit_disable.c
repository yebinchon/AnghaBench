
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {TYPE_3__ pch_pfit; TYPE_1__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int ) ;
 int PF_CTL (int) ;
 int PF_WIN_POS (int) ;
 int PF_WIN_SZ (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;



 if (old_crtc_state->pch_pfit.enabled) {
  I915_WRITE(PF_CTL(pipe), 0);
  I915_WRITE(PF_WIN_POS(pipe), 0);
  I915_WRITE(PF_WIN_SZ(pipe), 0);
 }
}
