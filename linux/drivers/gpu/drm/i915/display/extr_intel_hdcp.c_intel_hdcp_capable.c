
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct intel_hdcp_shim {int (* hdcp_capable ) (struct intel_digital_port*,int*) ;} ;
struct intel_digital_port {int dummy; } ;
struct TYPE_2__ {struct intel_hdcp_shim* shim; } ;
struct intel_connector {TYPE_1__ hdcp; } ;


 struct intel_digital_port* conn_to_dig_port (struct intel_connector*) ;
 int intel_hdcp_read_valid_bksv (struct intel_digital_port*,struct intel_hdcp_shim const*,int *) ;
 int stub1 (struct intel_digital_port*,int*) ;

bool intel_hdcp_capable(struct intel_connector *connector)
{
 struct intel_digital_port *intel_dig_port = conn_to_dig_port(connector);
 const struct intel_hdcp_shim *shim = connector->hdcp.shim;
 bool capable = 0;
 u8 bksv[5];

 if (!shim)
  return capable;

 if (shim->hdcp_capable) {
  shim->hdcp_capable(intel_dig_port, &capable);
 } else {
  if (!intel_hdcp_read_valid_bksv(intel_dig_port, shim, bksv))
   capable = 1;
 }

 return capable;
}
