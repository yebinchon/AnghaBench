
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_connector {int dummy; } ;


 int hdcp2_authenticate_repeater_topology (struct intel_connector*) ;
 int hdcp2_propagate_stream_management_info (struct intel_connector*) ;

__attribute__((used)) static int hdcp2_authenticate_repeater(struct intel_connector *connector)
{
 int ret;

 ret = hdcp2_authenticate_repeater_topology(connector);
 if (ret < 0)
  return ret;

 return hdcp2_propagate_stream_management_info(connector);
}
