
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ gamma_lut; scalar_t__ degamma_lut; } ;
struct intel_crtc_state {TYPE_1__ base; int c8_planes; } ;


 int GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED ;
 int GAMMA_MODE_MODE_8BIT ;
 int POST_CSC_GAMMA_ENABLE ;
 int PRE_CSC_GAMMA_ENABLE ;
 scalar_t__ crtc_state_is_legacy_gamma (struct intel_crtc_state const*) ;

__attribute__((used)) static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
{
 u32 gamma_mode = 0;

 if (crtc_state->base.degamma_lut)
  gamma_mode |= PRE_CSC_GAMMA_ENABLE;

 if (crtc_state->base.gamma_lut &&
     !crtc_state->c8_planes)
  gamma_mode |= POST_CSC_GAMMA_ENABLE;

 if (!crtc_state->base.gamma_lut ||
     crtc_state_is_legacy_gamma(crtc_state))
  gamma_mode |= GAMMA_MODE_MODE_8BIT;
 else
  gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;

 return gamma_mode;
}
