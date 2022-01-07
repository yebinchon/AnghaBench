
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_layer_state {scalar_t__ uses_frontend; } ;
struct sun4i_layer {int id; struct sun4i_backend* backend; } ;
struct sun4i_backend {int frontend_teardown; int frontend_lock; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 struct sun4i_layer* plane_to_sun4i_layer (struct drm_plane*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sun4i_layer_state* state_to_sun4i_layer_state (struct drm_plane_state*) ;
 int sun4i_backend_layer_enable (struct sun4i_backend*,int ,int) ;

__attribute__((used)) static void sun4i_backend_layer_atomic_disable(struct drm_plane *plane,
            struct drm_plane_state *old_state)
{
 struct sun4i_layer_state *layer_state = state_to_sun4i_layer_state(old_state);
 struct sun4i_layer *layer = plane_to_sun4i_layer(plane);
 struct sun4i_backend *backend = layer->backend;

 sun4i_backend_layer_enable(backend, layer->id, 0);

 if (layer_state->uses_frontend) {
  unsigned long flags;

  spin_lock_irqsave(&backend->frontend_lock, flags);
  backend->frontend_teardown = 1;
  spin_unlock_irqrestore(&backend->frontend_lock, flags);
 }
}
