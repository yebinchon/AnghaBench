
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kirin_plane {int dummy; } ;
struct drm_plane_state {int src_x; int src_y; int src_w; int src_h; int crtc_h; int crtc_w; int crtc_y; int crtc_x; int fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;


 int ade_update_channel (struct kirin_plane*,int ,int ,int ,int ,int ,int,int,int,int) ;
 struct kirin_plane* to_kirin_plane (struct drm_plane*) ;

__attribute__((used)) static void ade_plane_atomic_update(struct drm_plane *plane,
        struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = plane->state;
 struct kirin_plane *kplane = to_kirin_plane(plane);

 ade_update_channel(kplane, state->fb, state->crtc_x, state->crtc_y,
      state->crtc_w, state->crtc_h,
      state->src_x >> 16, state->src_y >> 16,
      state->src_w >> 16, state->src_h >> 16);
}
