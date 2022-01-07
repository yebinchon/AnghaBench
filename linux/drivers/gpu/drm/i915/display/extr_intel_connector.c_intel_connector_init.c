
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_connector_state {int base; } ;
struct intel_connector {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_reset (int *,int *) ;
 struct intel_digital_connector_state* kzalloc (int,int ) ;

int intel_connector_init(struct intel_connector *connector)
{
 struct intel_digital_connector_state *conn_state;







 conn_state = kzalloc(sizeof(*conn_state), GFP_KERNEL);
 if (!conn_state)
  return -ENOMEM;

 __drm_atomic_helper_connector_reset(&connector->base,
         &conn_state->base);

 return 0;
}
