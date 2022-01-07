
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {scalar_t__ has_pch_encoder; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int i915_reg_t ;


 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PCH_DPLL_SEL ;
 int TRANS_DPLLB_SEL (int) ;
 int TRANS_DPLL_ENABLE (int) ;
 int TRANS_DP_CTL (int) ;
 int TRANS_DP_OUTPUT_ENABLE ;
 int TRANS_DP_PORT_SEL_MASK ;
 int TRANS_DP_PORT_SEL_NONE ;
 int assert_vblank_disabled (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int intel_disable_pipe (struct intel_crtc_state*) ;
 int intel_encoders_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_encoders_post_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int intel_set_pch_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int ironlake_disable_pch_transcoder (struct drm_i915_private*,int) ;
 int ironlake_fdi_disable (struct drm_crtc*) ;
 int ironlake_fdi_pll_disable (struct intel_crtc*) ;
 int ironlake_pfit_disable (struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ironlake_crtc_disable(struct intel_crtc_state *old_crtc_state,
      struct intel_atomic_state *state)
{
 struct drm_crtc *crtc = old_crtc_state->base.crtc;
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;






 intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 0);
 intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, 0);

 intel_encoders_disable(intel_crtc, old_crtc_state, state);

 drm_crtc_vblank_off(crtc);
 assert_vblank_disabled(crtc);

 intel_disable_pipe(old_crtc_state);

 ironlake_pfit_disable(old_crtc_state);

 if (old_crtc_state->has_pch_encoder)
  ironlake_fdi_disable(crtc);

 intel_encoders_post_disable(intel_crtc, old_crtc_state, state);

 if (old_crtc_state->has_pch_encoder) {
  ironlake_disable_pch_transcoder(dev_priv, pipe);

  if (HAS_PCH_CPT(dev_priv)) {
   i915_reg_t reg;
   u32 temp;


   reg = TRANS_DP_CTL(pipe);
   temp = I915_READ(reg);
   temp &= ~(TRANS_DP_OUTPUT_ENABLE |
      TRANS_DP_PORT_SEL_MASK);
   temp |= TRANS_DP_PORT_SEL_NONE;
   I915_WRITE(reg, temp);


   temp = I915_READ(PCH_DPLL_SEL);
   temp &= ~(TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe));
   I915_WRITE(PCH_DPLL_SEL, temp);
  }

  ironlake_fdi_pll_disable(intel_crtc);
 }

 intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 1);
 intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, 1);
}
