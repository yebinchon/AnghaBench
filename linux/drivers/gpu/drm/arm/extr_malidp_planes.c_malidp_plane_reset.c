
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_plane_state {int base; } ;
struct drm_plane {int * state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (int *) ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,int *) ;
 int kfree (struct malidp_plane_state*) ;
 struct malidp_plane_state* kzalloc (int,int ) ;
 struct malidp_plane_state* to_malidp_plane_state (int *) ;

__attribute__((used)) static void malidp_plane_reset(struct drm_plane *plane)
{
 struct malidp_plane_state *state = to_malidp_plane_state(plane->state);

 if (state)
  __drm_atomic_helper_plane_destroy_state(&state->base);
 kfree(state);
 plane->state = ((void*)0);
 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state)
  __drm_atomic_helper_plane_reset(plane, &state->base);
}
