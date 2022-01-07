
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_port {int dummy; } ;
struct cdn_dp_device {int ports; struct cdn_dp_port** port; } ;


 int cdn_dp_get_port_lanes (struct cdn_dp_port*) ;

__attribute__((used)) static struct cdn_dp_port *cdn_dp_connected_port(struct cdn_dp_device *dp)
{
 struct cdn_dp_port *port;
 int i, lanes;

 for (i = 0; i < dp->ports; i++) {
  port = dp->port[i];
  lanes = cdn_dp_get_port_lanes(port);
  if (lanes)
   return port;
 }
 return ((void*)0);
}
