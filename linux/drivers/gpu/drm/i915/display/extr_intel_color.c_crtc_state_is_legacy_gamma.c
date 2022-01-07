
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gamma_lut; int ctm; int degamma_lut; } ;
struct intel_crtc_state {TYPE_1__ base; } ;


 scalar_t__ lut_is_legacy (scalar_t__) ;

__attribute__((used)) static bool crtc_state_is_legacy_gamma(const struct intel_crtc_state *crtc_state)
{
 return !crtc_state->base.degamma_lut &&
  !crtc_state->base.ctm &&
  crtc_state->base.gamma_lut &&
  lut_is_legacy(crtc_state->base.gamma_lut);
}
