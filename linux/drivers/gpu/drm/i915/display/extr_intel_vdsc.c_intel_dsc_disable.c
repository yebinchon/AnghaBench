
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int compression_enable; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {scalar_t__ cpu_transcoder; TYPE_3__ dsc_params; TYPE_1__ base; } ;
struct TYPE_5__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DSS_CTL1 ;
 int DSS_CTL2 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ICL_PIPE_DSS_CTL1 (int) ;
 int ICL_PIPE_DSS_CTL2 (int) ;
 int JOINER_ENABLE ;
 int LEFT_BRANCH_VDSC_ENABLE ;
 int RIGHT_BRANCH_VDSC_ENABLE ;
 scalar_t__ TRANSCODER_EDP ;
 int intel_display_power_put_unchecked (struct drm_i915_private*,int ) ;
 int intel_dsc_power_domain (struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
 u32 dss_ctl1_val = 0, dss_ctl2_val = 0;

 if (!old_crtc_state->dsc_params.compression_enable)
  return;

 if (old_crtc_state->cpu_transcoder == TRANSCODER_EDP) {
  dss_ctl1_reg = DSS_CTL1;
  dss_ctl2_reg = DSS_CTL2;
 } else {
  dss_ctl1_reg = ICL_PIPE_DSS_CTL1(pipe);
  dss_ctl2_reg = ICL_PIPE_DSS_CTL2(pipe);
 }
 dss_ctl1_val = I915_READ(dss_ctl1_reg);
 if (dss_ctl1_val & JOINER_ENABLE)
  dss_ctl1_val &= ~JOINER_ENABLE;
 I915_WRITE(dss_ctl1_reg, dss_ctl1_val);

 dss_ctl2_val = I915_READ(dss_ctl2_reg);
 if (dss_ctl2_val & LEFT_BRANCH_VDSC_ENABLE ||
     dss_ctl2_val & RIGHT_BRANCH_VDSC_ENABLE)
  dss_ctl2_val &= ~(LEFT_BRANCH_VDSC_ENABLE |
      RIGHT_BRANCH_VDSC_ENABLE);
 I915_WRITE(dss_ctl2_reg, dss_ctl2_val);


 intel_display_power_put_unchecked(dev_priv,
       intel_dsc_power_domain(old_crtc_state));
}
