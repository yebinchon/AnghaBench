
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {scalar_t__ output_format; } ;


 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;

__attribute__((used)) static int intel_dp_output_bpp(const struct intel_crtc_state *crtc_state, int bpp)
{





 if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
  bpp /= 2;

 return bpp;
}
