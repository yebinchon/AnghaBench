
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ctm; scalar_t__ degamma_lut; scalar_t__ gamma_lut; } ;
struct intel_crtc_state {int gamma_enable; int csc_enable; scalar_t__ output_format; int csc_mode; int gamma_mode; TYPE_1__ base; int c8_planes; } ;


 scalar_t__ INTEL_OUTPUT_FORMAT_RGB ;
 int check_luts (struct intel_crtc_state*) ;
 int ilk_csc_limited_range (struct intel_crtc_state*) ;
 int intel_color_add_affected_planes (struct intel_crtc_state*) ;
 int ivb_csc_mode (struct intel_crtc_state*) ;
 int ivb_gamma_mode (struct intel_crtc_state*) ;

__attribute__((used)) static int ivb_color_check(struct intel_crtc_state *crtc_state)
{
 bool limited_color_range = ilk_csc_limited_range(crtc_state);
 int ret;

 ret = check_luts(crtc_state);
 if (ret)
  return ret;

 crtc_state->gamma_enable =
  (crtc_state->base.gamma_lut ||
   crtc_state->base.degamma_lut) &&
  !crtc_state->c8_planes;

 crtc_state->csc_enable =
  crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
  crtc_state->base.ctm || limited_color_range;

 crtc_state->gamma_mode = ivb_gamma_mode(crtc_state);

 crtc_state->csc_mode = ivb_csc_mode(crtc_state);

 ret = intel_color_add_affected_planes(crtc_state);
 if (ret)
  return ret;

 return 0;
}
