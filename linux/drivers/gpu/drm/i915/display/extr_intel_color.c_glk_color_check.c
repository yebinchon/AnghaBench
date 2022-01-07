
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ctm; scalar_t__ degamma_lut; scalar_t__ gamma_lut; } ;
struct intel_crtc_state {int gamma_enable; int csc_enable; scalar_t__ output_format; scalar_t__ csc_mode; int gamma_mode; scalar_t__ limited_color_range; TYPE_1__ base; int c8_planes; } ;


 scalar_t__ INTEL_OUTPUT_FORMAT_RGB ;
 int check_luts (struct intel_crtc_state*) ;
 int glk_gamma_mode (struct intel_crtc_state*) ;
 int intel_color_add_affected_planes (struct intel_crtc_state*) ;

__attribute__((used)) static int glk_color_check(struct intel_crtc_state *crtc_state)
{
 int ret;

 ret = check_luts(crtc_state);
 if (ret)
  return ret;

 crtc_state->gamma_enable =
  crtc_state->base.gamma_lut &&
  !crtc_state->c8_planes;


 crtc_state->csc_enable =
  crtc_state->base.degamma_lut ||
  crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
  crtc_state->base.ctm || crtc_state->limited_color_range;

 crtc_state->gamma_mode = glk_gamma_mode(crtc_state);

 crtc_state->csc_mode = 0;

 ret = intel_color_add_affected_planes(crtc_state);
 if (ret)
  return ret;

 return 0;
}
