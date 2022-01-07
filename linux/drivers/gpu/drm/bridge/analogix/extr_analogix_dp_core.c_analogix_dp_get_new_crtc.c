
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector_state {struct drm_crtc* crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct analogix_dp_device {struct drm_encoder* encoder; } ;


 struct drm_connector* drm_atomic_get_new_connector_for_encoder (struct drm_atomic_state*,struct drm_encoder*) ;
 struct drm_connector_state* drm_atomic_get_new_connector_state (struct drm_atomic_state*,struct drm_connector*) ;

__attribute__((used)) static
struct drm_crtc *analogix_dp_get_new_crtc(struct analogix_dp_device *dp,
       struct drm_atomic_state *state)
{
 struct drm_encoder *encoder = dp->encoder;
 struct drm_connector *connector;
 struct drm_connector_state *conn_state;

 connector = drm_atomic_get_new_connector_for_encoder(state, encoder);
 if (!connector)
  return ((void*)0);

 conn_state = drm_atomic_get_new_connector_state(state, connector);
 if (!conn_state)
  return ((void*)0);

 return conn_state->crtc;
}
