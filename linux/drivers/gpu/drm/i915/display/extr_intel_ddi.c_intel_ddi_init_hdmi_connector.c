
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hdmi_reg; } ;
struct TYPE_3__ {int port; } ;
struct intel_digital_port {TYPE_2__ hdmi; TYPE_1__ base; } ;
struct intel_connector {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_BUF_CTL (int) ;
 struct intel_connector* intel_connector_alloc () ;
 int intel_hdmi_init_connector (struct intel_digital_port*,struct intel_connector*) ;

__attribute__((used)) static struct intel_connector *
intel_ddi_init_hdmi_connector(struct intel_digital_port *intel_dig_port)
{
 struct intel_connector *connector;
 enum port port = intel_dig_port->base.port;

 connector = intel_connector_alloc();
 if (!connector)
  return ((void*)0);

 intel_dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
 intel_hdmi_init_connector(intel_dig_port, connector);

 return connector;
}
