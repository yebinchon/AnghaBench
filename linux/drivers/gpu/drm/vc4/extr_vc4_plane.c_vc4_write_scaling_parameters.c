
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_plane_state {scalar_t__* x_scaling; scalar_t__* y_scaling; int crtc_h; int * src_h; int crtc_w; int * src_w; } ;
struct drm_plane_state {int dummy; } ;


 scalar_t__ VC4_SCALING_PPF ;
 scalar_t__ VC4_SCALING_TPZ ;
 struct vc4_plane_state* to_vc4_plane_state (struct drm_plane_state*) ;
 int vc4_dlist_write (struct vc4_plane_state*,int) ;
 int vc4_write_ppf (struct vc4_plane_state*,int ,int ) ;
 int vc4_write_tpz (struct vc4_plane_state*,int ,int ) ;

__attribute__((used)) static void vc4_write_scaling_parameters(struct drm_plane_state *state,
      int channel)
{
 struct vc4_plane_state *vc4_state = to_vc4_plane_state(state);


 if (vc4_state->x_scaling[channel] == VC4_SCALING_PPF) {
  vc4_write_ppf(vc4_state,
         vc4_state->src_w[channel], vc4_state->crtc_w);
 }


 if (vc4_state->y_scaling[channel] == VC4_SCALING_PPF) {
  vc4_write_ppf(vc4_state,
         vc4_state->src_h[channel], vc4_state->crtc_h);
  vc4_dlist_write(vc4_state, 0xc0c0c0c0);
 }


 if (vc4_state->x_scaling[channel] == VC4_SCALING_TPZ) {
  vc4_write_tpz(vc4_state,
         vc4_state->src_w[channel], vc4_state->crtc_w);
 }


 if (vc4_state->y_scaling[channel] == VC4_SCALING_TPZ) {
  vc4_write_tpz(vc4_state,
         vc4_state->src_h[channel], vc4_state->crtc_h);
  vc4_dlist_write(vc4_state, 0xc0c0c0c0);
 }
}
