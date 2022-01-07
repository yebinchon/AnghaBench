
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fp1; int fp0; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {TYPE_3__ dpll_hw_state; TYPE_1__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int FP0 (int ) ;
 int FP1 (int ) ;
 int I915_WRITE (int ,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void i9xx_set_pll_dividers(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 I915_WRITE(FP0(crtc->pipe), crtc_state->dpll_hw_state.fp0);
 I915_WRITE(FP1(crtc->pipe), crtc_state->dpll_hw_state.fp1);
}
