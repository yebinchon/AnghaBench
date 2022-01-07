
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_layer_state {int state; } ;
struct sun4i_layer {int id; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {int zpos; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (int *) ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,int *) ;
 int kfree (struct sun4i_layer_state*) ;
 struct sun4i_layer_state* kzalloc (int,int ) ;
 struct sun4i_layer* plane_to_sun4i_layer (struct drm_plane*) ;
 struct sun4i_layer_state* state_to_sun4i_layer_state (TYPE_1__*) ;

__attribute__((used)) static void sun4i_backend_layer_reset(struct drm_plane *plane)
{
 struct sun4i_layer *layer = plane_to_sun4i_layer(plane);
 struct sun4i_layer_state *state;

 if (plane->state) {
  state = state_to_sun4i_layer_state(plane->state);

  __drm_atomic_helper_plane_destroy_state(&state->state);

  kfree(state);
  plane->state = ((void*)0);
 }

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state) {
  __drm_atomic_helper_plane_reset(plane, &state->state);
  plane->state->zpos = layer->id;
 }
}
