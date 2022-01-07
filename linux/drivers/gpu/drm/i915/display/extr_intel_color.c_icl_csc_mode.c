
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ ctm; } ;
struct intel_crtc_state {scalar_t__ output_format; scalar_t__ limited_color_range; TYPE_1__ base; } ;


 int ICL_CSC_ENABLE ;
 int ICL_OUTPUT_CSC_ENABLE ;
 scalar_t__ INTEL_OUTPUT_FORMAT_RGB ;

__attribute__((used)) static u32 icl_csc_mode(const struct intel_crtc_state *crtc_state)
{
 u32 csc_mode = 0;

 if (crtc_state->base.ctm)
  csc_mode |= ICL_CSC_ENABLE;

 if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
     crtc_state->limited_color_range)
  csc_mode |= ICL_OUTPUT_CSC_ENABLE;

 return csc_mode;
}
