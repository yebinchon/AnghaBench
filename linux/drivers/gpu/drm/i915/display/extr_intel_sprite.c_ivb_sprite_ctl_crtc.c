
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc_state {scalar_t__ csc_enable; scalar_t__ gamma_enable; } ;


 int SPRITE_GAMMA_ENABLE ;
 int SPRITE_PIPE_CSC_ENABLE ;

__attribute__((used)) static u32 ivb_sprite_ctl_crtc(const struct intel_crtc_state *crtc_state)
{
 u32 sprctl = 0;

 if (crtc_state->gamma_enable)
  sprctl |= SPRITE_GAMMA_ENABLE;

 if (crtc_state->csc_enable)
  sprctl |= SPRITE_PIPE_CSC_ENABLE;

 return sprctl;
}
