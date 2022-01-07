
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct drm_plane_state {int src_h; int src_w; scalar_t__ crtc_w; scalar_t__ crtc_h; } ;


 int DRM_DEBUG_DRIVER (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool sun4i_backend_plane_uses_scaler(struct drm_plane_state *state)
{
 u16 src_h = state->src_h >> 16;
 u16 src_w = state->src_w >> 16;

 DRM_DEBUG_DRIVER("Input size %dx%d, output size %dx%d\n",
    src_w, src_h, state->crtc_w, state->crtc_h);

 if ((state->crtc_h != src_h) || (state->crtc_w != src_w))
  return 1;

 return 0;
}
