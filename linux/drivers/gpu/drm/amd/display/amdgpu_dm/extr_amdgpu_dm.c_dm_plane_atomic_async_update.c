
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {int crtc_h; int crtc_w; int crtc_y; int crtc_x; int src_h; int src_w; int src_y; int src_x; int fb; int state; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {int crtc_h; int crtc_w; int crtc_y; int crtc_x; int src_h; int src_w; int src_y; int src_x; int fb; } ;


 struct drm_plane_state* drm_atomic_get_old_plane_state (int ,struct drm_plane*) ;
 int handle_cursor_update (struct drm_plane*,struct drm_plane_state*) ;
 int swap (int ,int ) ;

__attribute__((used)) static void dm_plane_atomic_async_update(struct drm_plane *plane,
      struct drm_plane_state *new_state)
{
 struct drm_plane_state *old_state =
  drm_atomic_get_old_plane_state(new_state->state, plane);

 swap(plane->state->fb, new_state->fb);

 plane->state->src_x = new_state->src_x;
 plane->state->src_y = new_state->src_y;
 plane->state->src_w = new_state->src_w;
 plane->state->src_h = new_state->src_h;
 plane->state->crtc_x = new_state->crtc_x;
 plane->state->crtc_y = new_state->crtc_y;
 plane->state->crtc_w = new_state->crtc_w;
 plane->state->crtc_h = new_state->crtc_h;

 handle_cursor_update(plane, old_state);
}
