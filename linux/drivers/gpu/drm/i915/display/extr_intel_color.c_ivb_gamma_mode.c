
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ degamma_lut; scalar_t__ gamma_lut; } ;
struct intel_crtc_state {TYPE_1__ base; int gamma_enable; } ;


 int GAMMA_MODE_MODE_10BIT ;
 int GAMMA_MODE_MODE_8BIT ;
 int GAMMA_MODE_MODE_SPLIT ;
 scalar_t__ crtc_state_is_legacy_gamma (struct intel_crtc_state const*) ;

__attribute__((used)) static u32 ivb_gamma_mode(const struct intel_crtc_state *crtc_state)
{
 if (!crtc_state->gamma_enable ||
     crtc_state_is_legacy_gamma(crtc_state))
  return GAMMA_MODE_MODE_8BIT;
 else if (crtc_state->base.gamma_lut &&
   crtc_state->base.degamma_lut)
  return GAMMA_MODE_MODE_SPLIT;
 else
  return GAMMA_MODE_MODE_10BIT;
}
