
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prepare_link_retrain; int output_reg; } ;
struct TYPE_3__ {int port; } ;
struct intel_digital_port {TYPE_2__ dp; TYPE_1__ base; } ;
struct intel_connector {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_BUF_CTL (int) ;
 struct intel_connector* intel_connector_alloc () ;
 int intel_ddi_prepare_link_retrain ;
 int intel_dp_init_connector (struct intel_digital_port*,struct intel_connector*) ;
 int kfree (struct intel_connector*) ;

__attribute__((used)) static struct intel_connector *
intel_ddi_init_dp_connector(struct intel_digital_port *intel_dig_port)
{
 struct intel_connector *connector;
 enum port port = intel_dig_port->base.port;

 connector = intel_connector_alloc();
 if (!connector)
  return ((void*)0);

 intel_dig_port->dp.output_reg = DDI_BUF_CTL(port);
 intel_dig_port->dp.prepare_link_retrain =
  intel_ddi_prepare_link_retrain;

 if (!intel_dp_init_connector(intel_dig_port, connector)) {
  kfree(connector);
  return ((void*)0);
 }

 return connector;
}
