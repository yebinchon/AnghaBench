
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int * fb_damage_clips; int * commit; int * fence; scalar_t__ fb; } ;
struct drm_plane {int state; } ;


 int drm_framebuffer_get (scalar_t__) ;
 int memcpy (struct drm_plane_state*,int ,int) ;

void __drm_atomic_helper_plane_duplicate_state(struct drm_plane *plane,
            struct drm_plane_state *state)
{
 memcpy(state, plane->state, sizeof(*state));

 if (state->fb)
  drm_framebuffer_get(state->fb);

 state->fence = ((void*)0);
 state->commit = ((void*)0);
 state->fb_damage_clips = ((void*)0);
}
