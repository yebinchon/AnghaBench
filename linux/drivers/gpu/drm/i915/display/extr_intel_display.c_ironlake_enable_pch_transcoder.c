
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int shared_dpll; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int ) ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_SDVO ;
 int PCH_TRANSCONF (int) ;
 int PIPECONF (int) ;
 int PIPECONF_8BPC ;
 int PIPECONF_BPC_MASK ;
 int PIPECONF_INTERLACED_ILK ;
 int PIPECONF_INTERLACE_MASK ;
 int TRANS_CHICKEN2 (int) ;
 int TRANS_CHICKEN2_TIMING_OVERRIDE ;
 int TRANS_ENABLE ;
 int TRANS_INTERLACED ;
 int TRANS_INTERLACE_MASK ;
 int TRANS_LEGACY_INTERLACED_ILK ;
 int TRANS_PROGRESSIVE ;
 int TRANS_STATE_ENABLE ;
 int assert_fdi_rx_enabled (struct drm_i915_private*,int) ;
 int assert_fdi_tx_enabled (struct drm_i915_private*,int) ;
 int assert_shared_dpll_enabled (struct drm_i915_private*,int ) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ironlake_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 i915_reg_t reg;
 u32 val, pipeconf_val;


 assert_shared_dpll_enabled(dev_priv, crtc_state->shared_dpll);


 assert_fdi_tx_enabled(dev_priv, pipe);
 assert_fdi_rx_enabled(dev_priv, pipe);

 if (HAS_PCH_CPT(dev_priv)) {


  reg = TRANS_CHICKEN2(pipe);
  val = I915_READ(reg);
  val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
  I915_WRITE(reg, val);
 }

 reg = PCH_TRANSCONF(pipe);
 val = I915_READ(reg);
 pipeconf_val = I915_READ(PIPECONF(pipe));

 if (HAS_PCH_IBX(dev_priv)) {





  val &= ~PIPECONF_BPC_MASK;
  if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
   val |= PIPECONF_8BPC;
  else
   val |= pipeconf_val & PIPECONF_BPC_MASK;
 }

 val &= ~TRANS_INTERLACE_MASK;
 if ((pipeconf_val & PIPECONF_INTERLACE_MASK) == PIPECONF_INTERLACED_ILK) {
  if (HAS_PCH_IBX(dev_priv) &&
      intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
   val |= TRANS_LEGACY_INTERLACED_ILK;
  else
   val |= TRANS_INTERLACED;
 } else {
  val |= TRANS_PROGRESSIVE;
 }

 I915_WRITE(reg, val | TRANS_ENABLE);
 if (intel_de_wait_for_set(dev_priv, reg, TRANS_STATE_ENABLE, 100))
  DRM_ERROR("failed to enable transcoder %c\n", pipe_name(pipe));
}
