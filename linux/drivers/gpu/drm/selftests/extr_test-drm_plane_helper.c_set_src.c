
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {unsigned int src_x; unsigned int src_y; unsigned int src_w; unsigned int src_h; } ;



__attribute__((used)) static void set_src(struct drm_plane_state *plane_state,
      unsigned src_x, unsigned src_y,
      unsigned src_w, unsigned src_h)
{
 plane_state->src_x = src_x;
 plane_state->src_y = src_y;
 plane_state->src_w = src_w;
 plane_state->src_h = src_h;
}
