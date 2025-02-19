
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_layer_state {scalar_t__ uses_frontend; } ;
struct sun4i_layer {int id; struct sun4i_backend* backend; } ;
struct sun4i_frontend {int dummy; } ;
struct sun4i_backend {struct sun4i_frontend* frontend; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int state; } ;


 int DRM_FORMAT_XRGB8888 ;
 struct sun4i_layer* plane_to_sun4i_layer (struct drm_plane*) ;
 struct sun4i_layer_state* state_to_sun4i_layer_state (int ) ;
 int sun4i_backend_cleanup_layer (struct sun4i_backend*,int ) ;
 int sun4i_backend_layer_enable (struct sun4i_backend*,int ,int) ;
 int sun4i_backend_update_layer_buffer (struct sun4i_backend*,int ,struct drm_plane*) ;
 int sun4i_backend_update_layer_coord (struct sun4i_backend*,int ,struct drm_plane*) ;
 int sun4i_backend_update_layer_formats (struct sun4i_backend*,int ,struct drm_plane*) ;
 int sun4i_backend_update_layer_frontend (struct sun4i_backend*,int ,int ) ;
 int sun4i_backend_update_layer_zpos (struct sun4i_backend*,int ,struct drm_plane*) ;
 int sun4i_frontend_enable (struct sun4i_frontend*) ;
 int sun4i_frontend_init (struct sun4i_frontend*) ;
 int sun4i_frontend_update_buffer (struct sun4i_frontend*,struct drm_plane*) ;
 int sun4i_frontend_update_coord (struct sun4i_frontend*,struct drm_plane*) ;
 int sun4i_frontend_update_formats (struct sun4i_frontend*,struct drm_plane*,int ) ;

__attribute__((used)) static void sun4i_backend_layer_atomic_update(struct drm_plane *plane,
           struct drm_plane_state *old_state)
{
 struct sun4i_layer_state *layer_state = state_to_sun4i_layer_state(plane->state);
 struct sun4i_layer *layer = plane_to_sun4i_layer(plane);
 struct sun4i_backend *backend = layer->backend;
 struct sun4i_frontend *frontend = backend->frontend;

 sun4i_backend_cleanup_layer(backend, layer->id);

 if (layer_state->uses_frontend) {
  sun4i_frontend_init(frontend);
  sun4i_frontend_update_coord(frontend, plane);
  sun4i_frontend_update_buffer(frontend, plane);
  sun4i_frontend_update_formats(frontend, plane,
           DRM_FORMAT_XRGB8888);
  sun4i_backend_update_layer_frontend(backend, layer->id,
          DRM_FORMAT_XRGB8888);
  sun4i_frontend_enable(frontend);
 } else {
  sun4i_backend_update_layer_formats(backend, layer->id, plane);
  sun4i_backend_update_layer_buffer(backend, layer->id, plane);
 }

 sun4i_backend_update_layer_coord(backend, layer->id, plane);
 sun4i_backend_update_layer_zpos(backend, layer->id, plane);
 sun4i_backend_layer_enable(backend, layer->id, 1);
}
