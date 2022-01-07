
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opa_vnic_vema_port {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct opa_vnic_adapter {int dummy; } ;
struct opa_veswport_info {int vport; int vesw; } ;


 int OPA_VNIC_INVAL_ATTR ;
 int opa_vnic_process_vema_config (struct opa_vnic_adapter*) ;
 int opa_vnic_release_mac_tbl (struct opa_vnic_adapter*) ;
 int opa_vnic_set_per_veswport_info (struct opa_vnic_adapter*,int *) ;
 int opa_vnic_set_vesw_info (struct opa_vnic_adapter*,int *) ;
 int vema_get_pod_values (struct opa_veswport_info*) ;
 int vema_get_veswport_info (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;
 struct opa_vnic_adapter* vema_get_vport_adapter (struct opa_vnic_vema_mad*,struct opa_vnic_vema_port*) ;

__attribute__((used)) static void vema_set_delete_vesw(struct opa_vnic_vema_port *port,
     struct opa_vnic_vema_mad *recvd_mad,
     struct opa_vnic_vema_mad *rsp_mad)
{
 struct opa_veswport_info *port_info =
      (struct opa_veswport_info *)rsp_mad->data;
 struct opa_vnic_adapter *adapter;

 adapter = vema_get_vport_adapter(recvd_mad, port);
 if (!adapter) {
  rsp_mad->mad_hdr.status = OPA_VNIC_INVAL_ATTR;
  return;
 }

 vema_get_pod_values(port_info);
 opa_vnic_set_vesw_info(adapter, &port_info->vesw);
 opa_vnic_set_per_veswport_info(adapter, &port_info->vport);


 opa_vnic_process_vema_config(adapter);

 opa_vnic_release_mac_tbl(adapter);

 vema_get_veswport_info(port, recvd_mad, rsp_mad);
}
