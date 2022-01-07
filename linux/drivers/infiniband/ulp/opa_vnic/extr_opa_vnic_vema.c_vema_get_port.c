
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opa_vnic_vema_port {int dummy; } ;
struct opa_vnic_ctrl_port {int num_ports; } ;



__attribute__((used)) static struct opa_vnic_vema_port *
vema_get_port(struct opa_vnic_ctrl_port *cport, u8 port_num)
{
 struct opa_vnic_vema_port *port = (void *)cport + sizeof(*cport);

 if (port_num > cport->num_ports)
  return ((void*)0);

 return port + (port_num - 1);
}
