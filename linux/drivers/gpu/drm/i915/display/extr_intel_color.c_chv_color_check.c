
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int gamma_enable; int cgm_mode; int gamma_mode; int c8_planes; } ;


 int GAMMA_MODE_MODE_8BIT ;
 int check_luts (struct intel_crtc_state*) ;
 int chv_cgm_mode (struct intel_crtc_state*) ;
 scalar_t__ crtc_state_is_legacy_gamma (struct intel_crtc_state*) ;
 int intel_color_add_affected_planes (struct intel_crtc_state*) ;

__attribute__((used)) static int chv_color_check(struct intel_crtc_state *crtc_state)
{
 int ret;

 ret = check_luts(crtc_state);
 if (ret)
  return ret;





 crtc_state->gamma_enable =
  crtc_state_is_legacy_gamma(crtc_state) &&
  !crtc_state->c8_planes;

 crtc_state->gamma_mode = GAMMA_MODE_MODE_8BIT;

 crtc_state->cgm_mode = chv_cgm_mode(crtc_state);

 ret = intel_color_add_affected_planes(crtc_state);
 if (ret)
  return ret;

 return 0;
}
