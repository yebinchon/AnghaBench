
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct rcar_du_wb_conn_state {struct drm_connector_state state; } ;
struct drm_connector {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct rcar_du_wb_conn_state* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_connector_state *
rcar_du_wb_conn_duplicate_state(struct drm_connector *connector)
{
 struct rcar_du_wb_conn_state *copy;

 if (WARN_ON(!connector->state))
  return ((void*)0);

 copy = kzalloc(sizeof(*copy), GFP_KERNEL);
 if (!copy)
  return ((void*)0);

 __drm_atomic_helper_connector_duplicate_state(connector, &copy->state);

 return &copy->state;
}
