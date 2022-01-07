
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_atomic_helper_connector_destroy_state (struct drm_connector*,struct drm_connector_state*) ;

void
vmw_du_connector_destroy_state(struct drm_connector *connector,
     struct drm_connector_state *state)
{
 drm_atomic_helper_connector_destroy_state(connector, state);
}
