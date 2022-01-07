
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct intel_crtc_state {scalar_t__ output_format; } ;


 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;
 int intel_pixel_encoding_setup_vsc (struct intel_dp*,struct intel_crtc_state const*) ;

void intel_dp_ycbcr_420_enable(struct intel_dp *intel_dp,
          const struct intel_crtc_state *crtc_state)
{
 if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
  return;

 intel_pixel_encoding_setup_vsc(intel_dp, crtc_state);
}
