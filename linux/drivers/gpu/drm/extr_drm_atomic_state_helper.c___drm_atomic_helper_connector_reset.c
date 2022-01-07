
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {struct drm_connector_state* state; } ;



void
__drm_atomic_helper_connector_reset(struct drm_connector *connector,
        struct drm_connector_state *conn_state)
{
 if (conn_state)
  conn_state->connector = connector;

 connector->state = conn_state;
}
