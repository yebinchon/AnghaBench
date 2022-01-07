
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_crtc_state {int txp_armed; } ;
struct drm_crtc_state {int dummy; } ;


 struct vc4_crtc_state* to_vc4_crtc_state (struct drm_crtc_state*) ;

void vc4_crtc_txp_armed(struct drm_crtc_state *state)
{
 struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(state);

 vc4_state->txp_armed = 1;
}
