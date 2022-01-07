
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_wb_conn_state {int state; } ;
struct drm_connector {int * state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_reset (struct drm_connector*,int *) ;
 struct rcar_du_wb_conn_state* kzalloc (int,int ) ;
 int rcar_du_wb_conn_destroy_state (struct drm_connector*,int *) ;

__attribute__((used)) static void rcar_du_wb_conn_reset(struct drm_connector *connector)
{
 struct rcar_du_wb_conn_state *state;

 if (connector->state) {
  rcar_du_wb_conn_destroy_state(connector, connector->state);
  connector->state = ((void*)0);
 }

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return;

 __drm_atomic_helper_connector_reset(connector, &state->state);
}
