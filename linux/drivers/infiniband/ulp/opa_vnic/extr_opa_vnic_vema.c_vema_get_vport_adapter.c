
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opa_vnic_vema_port {int vports; } ;
struct opa_vnic_vema_mad {int dummy; } ;
struct opa_vnic_adapter {int dummy; } ;


 int vema_get_vport_num (struct opa_vnic_vema_mad*) ;
 struct opa_vnic_adapter* xa_load (int *,int ) ;

__attribute__((used)) static inline struct opa_vnic_adapter *
vema_get_vport_adapter(struct opa_vnic_vema_mad *recvd_mad,
         struct opa_vnic_vema_port *port)
{
 u8 vport_num = vema_get_vport_num(recvd_mad);

 return xa_load(&port->vports, vport_num);
}
