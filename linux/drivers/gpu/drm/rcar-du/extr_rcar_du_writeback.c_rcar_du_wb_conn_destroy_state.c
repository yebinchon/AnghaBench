
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct drm_connector {int dummy; } ;


 int __drm_atomic_helper_connector_destroy_state (struct drm_connector_state*) ;
 int kfree (int ) ;
 int to_rcar_wb_conn_state (struct drm_connector_state*) ;

__attribute__((used)) static void rcar_du_wb_conn_destroy_state(struct drm_connector *connector,
       struct drm_connector_state *state)
{
 __drm_atomic_helper_connector_destroy_state(state);
 kfree(to_rcar_wb_conn_state(state));
}
