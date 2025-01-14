
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct sun4i_layer_state {struct drm_plane_state state; int uses_frontend; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct sun4i_layer_state* kzalloc (int,int ) ;
 struct sun4i_layer_state* state_to_sun4i_layer_state (int ) ;

__attribute__((used)) static struct drm_plane_state *
sun4i_backend_layer_duplicate_state(struct drm_plane *plane)
{
 struct sun4i_layer_state *orig = state_to_sun4i_layer_state(plane->state);
 struct sun4i_layer_state *copy;

 copy = kzalloc(sizeof(*copy), GFP_KERNEL);
 if (!copy)
  return ((void*)0);

 __drm_atomic_helper_plane_duplicate_state(plane, &copy->state);
 copy->uses_frontend = orig->uses_frontend;

 return &copy->state;
}
