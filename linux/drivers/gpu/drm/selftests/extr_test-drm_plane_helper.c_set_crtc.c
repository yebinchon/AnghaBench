
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int crtc_x; int crtc_y; unsigned int crtc_w; unsigned int crtc_h; } ;



__attribute__((used)) static void set_crtc(struct drm_plane_state *plane_state,
       int crtc_x, int crtc_y,
       unsigned crtc_w, unsigned crtc_h)
{
 plane_state->crtc_x = crtc_x;
 plane_state->crtc_y = crtc_y;
 plane_state->crtc_w = crtc_w;
 plane_state->crtc_h = crtc_h;
}
