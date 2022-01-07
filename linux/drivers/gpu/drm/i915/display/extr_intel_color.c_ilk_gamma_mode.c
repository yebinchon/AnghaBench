
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc_state {int gamma_enable; } ;


 int GAMMA_MODE_MODE_10BIT ;
 int GAMMA_MODE_MODE_8BIT ;
 scalar_t__ crtc_state_is_legacy_gamma (struct intel_crtc_state const*) ;

__attribute__((used)) static u32 ilk_gamma_mode(const struct intel_crtc_state *crtc_state)
{
 if (!crtc_state->gamma_enable ||
     crtc_state_is_legacy_gamma(crtc_state))
  return GAMMA_MODE_MODE_8BIT;
 else
  return GAMMA_MODE_MODE_10BIT;
}
