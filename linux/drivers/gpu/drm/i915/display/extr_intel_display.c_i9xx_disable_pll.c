
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL (int) ;
 int DPLL_VGA_MODE_DIS ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 int assert_pipe_disabled (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;


 if (IS_I830(dev_priv))
  return;


 assert_pipe_disabled(dev_priv, pipe);

 I915_WRITE(DPLL(pipe), DPLL_VGA_MODE_DIS);
 POSTING_READ(DPLL(pipe));
}
