
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_plane_state {scalar_t__* y_scaling; int is_yuv; scalar_t__ crtc_w; int * src_w; } ;
struct drm_plane_state {int dummy; } ;


 scalar_t__ VC4_SCALING_NONE ;
 scalar_t__ VC4_SCALING_TPZ ;
 int max (int ,int) ;
 int roundup (int,int) ;
 struct vc4_plane_state* to_vc4_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static u32 vc4_lbm_size(struct drm_plane_state *state)
{
 struct vc4_plane_state *vc4_state = to_vc4_plane_state(state);



 u32 pix_per_line = max(vc4_state->src_w[0], (u32)vc4_state->crtc_w);
 u32 lbm;


 if (vc4_state->y_scaling[0] == VC4_SCALING_NONE &&
     vc4_state->y_scaling[1] == VC4_SCALING_NONE)
  return 0;

 if (!vc4_state->is_yuv) {
  if (vc4_state->y_scaling[0] == VC4_SCALING_TPZ)
   lbm = pix_per_line * 8;
  else {

   lbm = pix_per_line * 16;
  }
 } else {




  lbm = pix_per_line * 16;
 }

 lbm = roundup(lbm, 32);

 return lbm;
}
