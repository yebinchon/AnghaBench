
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ degamma_lut; } ;
struct intel_crtc_state {scalar_t__ output_format; TYPE_1__ base; } ;


 int CSC_POSITION_BEFORE_GAMMA ;
 scalar_t__ INTEL_OUTPUT_FORMAT_RGB ;
 int ilk_csc_limited_range (struct intel_crtc_state const*) ;

__attribute__((used)) static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
{
 bool limited_color_range = ilk_csc_limited_range(crtc_state);





 if (crtc_state->base.degamma_lut ||
     crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
     limited_color_range)
  return 0;

 return CSC_POSITION_BEFORE_GAMMA;
}
