
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ gamma_lut; scalar_t__ ctm; scalar_t__ degamma_lut; } ;
struct intel_crtc_state {TYPE_1__ base; } ;


 int CGM_PIPE_MODE_CSC ;
 int CGM_PIPE_MODE_DEGAMMA ;
 int CGM_PIPE_MODE_GAMMA ;
 scalar_t__ crtc_state_is_legacy_gamma (struct intel_crtc_state const*) ;

__attribute__((used)) static u32 chv_cgm_mode(const struct intel_crtc_state *crtc_state)
{
 u32 cgm_mode = 0;

 if (crtc_state_is_legacy_gamma(crtc_state))
  return 0;

 if (crtc_state->base.degamma_lut)
  cgm_mode |= CGM_PIPE_MODE_DEGAMMA;
 if (crtc_state->base.ctm)
  cgm_mode |= CGM_PIPE_MODE_CSC;
 if (crtc_state->base.gamma_lut)
  cgm_mode |= CGM_PIPE_MODE_GAMMA;

 return cgm_mode;
}
