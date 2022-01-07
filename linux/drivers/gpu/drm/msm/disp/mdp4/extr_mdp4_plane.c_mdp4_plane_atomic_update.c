
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int src_h; int src_w; int src_y; int src_x; int crtc_h; int crtc_w; int crtc_y; int crtc_x; int fb; int crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;


 int WARN_ON (int) ;
 int mdp4_plane_mode_set (struct drm_plane*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void mdp4_plane_atomic_update(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = plane->state;
 int ret;

 ret = mdp4_plane_mode_set(plane,
   state->crtc, state->fb,
   state->crtc_x, state->crtc_y,
   state->crtc_w, state->crtc_h,
   state->src_x, state->src_y,
   state->src_w, state->src_h);

 WARN_ON(ret < 0);
}
