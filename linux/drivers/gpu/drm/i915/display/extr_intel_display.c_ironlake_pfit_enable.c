
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; int size; scalar_t__ enabled; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ pch_pfit; TYPE_2__ base; } ;
struct TYPE_6__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int PF_CTL (int) ;
 int PF_ENABLE ;
 int PF_FILTER_MED_3x3 ;
 int PF_PIPE_SEL_IVB (int) ;
 int PF_WIN_POS (int) ;
 int PF_WIN_SZ (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 int pipe = crtc->pipe;

 if (crtc_state->pch_pfit.enabled) {




  if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
   I915_WRITE(PF_CTL(pipe), PF_ENABLE | PF_FILTER_MED_3x3 |
       PF_PIPE_SEL_IVB(pipe));
  else
   I915_WRITE(PF_CTL(pipe), PF_ENABLE | PF_FILTER_MED_3x3);
  I915_WRITE(PF_WIN_POS(pipe), crtc_state->pch_pfit.pos);
  I915_WRITE(PF_WIN_SZ(pipe), crtc_state->pch_pfit.size);
 }
}
