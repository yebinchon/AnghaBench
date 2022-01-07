
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_conn_atom {int state; } ;
struct drm_connector_state {int dummy; } ;
struct drm_connector {int dummy; } ;


 int __drm_atomic_helper_connector_destroy_state (int *) ;
 int kfree (struct nouveau_conn_atom*) ;
 struct nouveau_conn_atom* nouveau_conn_atom (struct drm_connector_state*) ;

void
nouveau_conn_atomic_destroy_state(struct drm_connector *connector,
      struct drm_connector_state *state)
{
 struct nouveau_conn_atom *asyc = nouveau_conn_atom(state);
 __drm_atomic_helper_connector_destroy_state(&asyc->state);
 kfree(asyc);
}
