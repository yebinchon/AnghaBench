
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct intel_connector {TYPE_1__ base; } ;


 int kfree (struct intel_connector*) ;
 struct intel_connector* to_intel_digital_connector_state (int ) ;

void intel_connector_free(struct intel_connector *connector)
{
 kfree(to_intel_digital_connector_state(connector->base.state));
 kfree(connector);
}
