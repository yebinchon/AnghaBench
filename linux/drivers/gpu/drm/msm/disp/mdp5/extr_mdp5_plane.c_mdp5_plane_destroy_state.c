
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_plane_state {int dummy; } ;
struct drm_plane_state {scalar_t__ fb; } ;
struct drm_plane {int dummy; } ;


 int drm_framebuffer_put (scalar_t__) ;
 int kfree (struct mdp5_plane_state*) ;
 struct mdp5_plane_state* to_mdp5_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void mdp5_plane_destroy_state(struct drm_plane *plane,
  struct drm_plane_state *state)
{
 struct mdp5_plane_state *pstate = to_mdp5_plane_state(state);

 if (state->fb)
  drm_framebuffer_put(state->fb);

 kfree(pstate);
}
