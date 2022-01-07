
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {scalar_t__ output_format; } ;


 scalar_t__ INTEL_OUTPUT_FORMAT_RGB ;

int intel_dp_min_bpp(const struct intel_crtc_state *crtc_state)
{
 if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB)
  return 6 * 3;
 else
  return 8 * 3;
}
