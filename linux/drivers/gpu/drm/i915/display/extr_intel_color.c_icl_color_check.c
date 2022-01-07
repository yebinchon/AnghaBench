
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int csc_mode; int gamma_mode; } ;


 int check_luts (struct intel_crtc_state*) ;
 int icl_csc_mode (struct intel_crtc_state*) ;
 int icl_gamma_mode (struct intel_crtc_state*) ;

__attribute__((used)) static int icl_color_check(struct intel_crtc_state *crtc_state)
{
 int ret;

 ret = check_luts(crtc_state);
 if (ret)
  return ret;

 crtc_state->gamma_mode = icl_gamma_mode(crtc_state);

 crtc_state->csc_mode = icl_csc_mode(crtc_state);

 return 0;
}
