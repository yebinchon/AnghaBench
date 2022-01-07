
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dst; int src; int fb; int crtc; } ;
struct drm_plane {int name; struct drm_plane_state* state; } ;


 int DBG (char*,int ) ;
 int WARN_ON (int) ;
 int mdp5_plane_mode_set (struct drm_plane*,int ,int ,int *,int *) ;
 scalar_t__ plane_enabled (struct drm_plane_state*) ;

__attribute__((used)) static void mdp5_plane_atomic_update(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct drm_plane_state *state = plane->state;

 DBG("%s: update", plane->name);

 if (plane_enabled(state)) {
  int ret;

  ret = mdp5_plane_mode_set(plane,
    state->crtc, state->fb,
    &state->src, &state->dst);

  WARN_ON(ret < 0);
 }
}
