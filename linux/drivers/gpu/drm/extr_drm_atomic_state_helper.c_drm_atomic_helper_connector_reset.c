
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct drm_connector {scalar_t__ state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_destroy_state (scalar_t__) ;
 int __drm_atomic_helper_connector_reset (struct drm_connector*,struct drm_connector_state*) ;
 int kfree (scalar_t__) ;
 struct drm_connector_state* kzalloc (int,int ) ;

void drm_atomic_helper_connector_reset(struct drm_connector *connector)
{
 struct drm_connector_state *conn_state =
  kzalloc(sizeof(*conn_state), GFP_KERNEL);

 if (connector->state)
  __drm_atomic_helper_connector_destroy_state(connector->state);

 kfree(connector->state);
 __drm_atomic_helper_connector_reset(connector, conn_state);
}
