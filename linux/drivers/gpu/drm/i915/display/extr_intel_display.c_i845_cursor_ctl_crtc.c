
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc_state {scalar_t__ gamma_enable; } ;


 int CURSOR_GAMMA_ENABLE ;

__attribute__((used)) static u32 i845_cursor_ctl_crtc(const struct intel_crtc_state *crtc_state)
{
 u32 cntl = 0;

 if (crtc_state->gamma_enable)
  cntl |= CURSOR_GAMMA_ENABLE;

 return cntl;
}
