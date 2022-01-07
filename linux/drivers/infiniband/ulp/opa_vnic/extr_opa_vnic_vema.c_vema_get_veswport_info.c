
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_vnic_vema_port {int dummy; } ;
struct opa_vnic_vema_mad {scalar_t__ data; } ;
struct opa_vnic_adapter {int dummy; } ;
struct opa_veswport_info {int vport; int vesw; } ;


 int memset (struct opa_veswport_info*,int ,int) ;
 int opa_vnic_get_per_veswport_info (struct opa_vnic_adapter*,int *) ;
 int opa_vnic_get_vesw_info (struct opa_vnic_adapter*,int *) ;
 int vema_get_pod_values (struct opa_veswport_info*) ;
 struct opa_vnic_adapter* vema_get_vport_adapter (struct opa_vnic_vema_mad*,struct opa_vnic_vema_port*) ;

__attribute__((used)) static void vema_get_veswport_info(struct opa_vnic_vema_port *port,
       struct opa_vnic_vema_mad *recvd_mad,
       struct opa_vnic_vema_mad *rsp_mad)
{
 struct opa_veswport_info *port_info =
      (struct opa_veswport_info *)rsp_mad->data;
 struct opa_vnic_adapter *adapter;

 adapter = vema_get_vport_adapter(recvd_mad, port);
 if (adapter) {
  memset(port_info, 0, sizeof(*port_info));
  opa_vnic_get_vesw_info(adapter, &port_info->vesw);
  opa_vnic_get_per_veswport_info(adapter,
            &port_info->vport);
 } else {
  vema_get_pod_values(port_info);
 }
}
