
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dpll; int dpll_md; } ;
struct intel_crtc_state {TYPE_1__ dpll_hw_state; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int DPLL (int ) ;
 int DPLL_MD (int ) ;
 int DPLL_VGA_MODE_DIS ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 int assert_panel_unlocked (struct drm_i915_private*,int ) ;
 int assert_pipe_disabled (struct drm_i915_private*,int ) ;
 scalar_t__ i9xx_has_pps (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;
 int udelay (int) ;

__attribute__((used)) static void i9xx_enable_pll(struct intel_crtc *crtc,
       const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 i915_reg_t reg = DPLL(crtc->pipe);
 u32 dpll = crtc_state->dpll_hw_state.dpll;
 int i;

 assert_pipe_disabled(dev_priv, crtc->pipe);


 if (i9xx_has_pps(dev_priv))
  assert_panel_unlocked(dev_priv, crtc->pipe);






 I915_WRITE(reg, dpll & ~DPLL_VGA_MODE_DIS);
 I915_WRITE(reg, dpll);


 POSTING_READ(reg);
 udelay(150);

 if (INTEL_GEN(dev_priv) >= 4) {
  I915_WRITE(DPLL_MD(crtc->pipe),
      crtc_state->dpll_hw_state.dpll_md);
 } else {





  I915_WRITE(reg, dpll);
 }


 for (i = 0; i < 3; i++) {
  I915_WRITE(reg, dpll);
  POSTING_READ(reg);
  udelay(150);
 }
}
