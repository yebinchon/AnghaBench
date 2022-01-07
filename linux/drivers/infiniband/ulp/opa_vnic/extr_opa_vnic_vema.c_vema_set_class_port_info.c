
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_vnic_vema_port {int class_port_info; } ;
struct opa_vnic_vema_mad {int data; } ;


 int memcpy (int *,int ,int) ;
 int vema_get_class_port_info (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;

__attribute__((used)) static void vema_set_class_port_info(struct opa_vnic_vema_port *port,
         struct opa_vnic_vema_mad *recvd_mad,
         struct opa_vnic_vema_mad *rsp_mad)
{
 memcpy(&port->class_port_info, recvd_mad->data,
        sizeof(port->class_port_info));

 vema_get_class_port_info(port, recvd_mad, rsp_mad);
}
