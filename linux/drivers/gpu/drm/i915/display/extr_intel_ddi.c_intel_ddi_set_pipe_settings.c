
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; int pipe_bpp; scalar_t__ output_format; scalar_t__ limited_color_range; TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int I915_WRITE (int ,int) ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR444 ;
 int MISSING_CASE (int) ;
 int TRANS_MSA_10_BPC ;
 int TRANS_MSA_12_BPC ;
 int TRANS_MSA_6_BPC ;
 int TRANS_MSA_8_BPC ;
 int TRANS_MSA_CEA_RANGE ;
 int TRANS_MSA_CLRSP_YCBCR ;
 int TRANS_MSA_MISC (int) ;
 int TRANS_MSA_SAMPLING_444 ;
 int TRANS_MSA_SYNC_CLK ;
 int TRANS_MSA_USE_VSC_SDP ;
 int WARN_ON (int ) ;
 int intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int transcoder_is_dsi (int) ;

void intel_ddi_set_pipe_settings(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 u32 temp;

 if (!intel_crtc_has_dp_encoder(crtc_state))
  return;

 WARN_ON(transcoder_is_dsi(cpu_transcoder));

 temp = TRANS_MSA_SYNC_CLK;

 if (crtc_state->limited_color_range)
  temp |= TRANS_MSA_CEA_RANGE;

 switch (crtc_state->pipe_bpp) {
 case 18:
  temp |= TRANS_MSA_6_BPC;
  break;
 case 24:
  temp |= TRANS_MSA_8_BPC;
  break;
 case 30:
  temp |= TRANS_MSA_10_BPC;
  break;
 case 36:
  temp |= TRANS_MSA_12_BPC;
  break;
 default:
  MISSING_CASE(crtc_state->pipe_bpp);
  break;
 }






 if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444)
  temp |= TRANS_MSA_SAMPLING_444 | TRANS_MSA_CLRSP_YCBCR;






 if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
  temp |= TRANS_MSA_USE_VSC_SDP;
 I915_WRITE(TRANS_MSA_MISC(cpu_transcoder), temp);
}
