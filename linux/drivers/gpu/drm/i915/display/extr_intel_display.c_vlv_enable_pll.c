
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dpll; int dpll_md; } ;
struct intel_crtc_state {TYPE_2__ dpll_hw_state; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL_MD (int) ;
 int DPLL_VCO_ENABLE ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int _vlv_enable_pll (struct intel_crtc*,struct intel_crtc_state const*) ;
 int assert_panel_unlocked (struct drm_i915_private*,int) ;
 int assert_pipe_disabled (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void vlv_enable_pll(struct intel_crtc *crtc,
      const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;

 assert_pipe_disabled(dev_priv, pipe);


 assert_panel_unlocked(dev_priv, pipe);

 if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
  _vlv_enable_pll(crtc, pipe_config);

 I915_WRITE(DPLL_MD(pipe), pipe_config->dpll_hw_state.dpll_md);
 POSTING_READ(DPLL_MD(pipe));
}
