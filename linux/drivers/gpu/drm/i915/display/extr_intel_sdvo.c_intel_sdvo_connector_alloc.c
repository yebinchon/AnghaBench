
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; } ;
struct intel_sdvo_connector_state {TYPE_2__ base; } ;
struct TYPE_3__ {int base; } ;
struct intel_sdvo_connector {TYPE_1__ base; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_reset (int *,int *) ;
 int kfree (struct intel_sdvo_connector*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static struct intel_sdvo_connector *intel_sdvo_connector_alloc(void)
{
 struct intel_sdvo_connector *sdvo_connector;
 struct intel_sdvo_connector_state *conn_state;

 sdvo_connector = kzalloc(sizeof(*sdvo_connector), GFP_KERNEL);
 if (!sdvo_connector)
  return ((void*)0);

 conn_state = kzalloc(sizeof(*conn_state), GFP_KERNEL);
 if (!conn_state) {
  kfree(sdvo_connector);
  return ((void*)0);
 }

 __drm_atomic_helper_connector_reset(&sdvo_connector->base.base,
         &conn_state->base.base);

 return sdvo_connector;
}
