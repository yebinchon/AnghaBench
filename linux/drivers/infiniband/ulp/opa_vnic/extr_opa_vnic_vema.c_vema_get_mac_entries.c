
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opa_vnic_vema_port {int dummy; } ;
struct TYPE_2__ {void* status; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct opa_vnic_adapter {int dummy; } ;
struct opa_veswport_mactable {int num_entries; int offset; } ;


 void* OPA_VNIC_INVAL_ATTR ;
 int opa_vnic_query_mac_tbl (struct opa_vnic_adapter*,struct opa_veswport_mactable*) ;
 struct opa_vnic_adapter* vema_get_vport_adapter (struct opa_vnic_vema_mad*,struct opa_vnic_vema_port*) ;
 scalar_t__ vema_mac_tbl_req_ok (struct opa_veswport_mactable*) ;

__attribute__((used)) static void vema_get_mac_entries(struct opa_vnic_vema_port *port,
     struct opa_vnic_vema_mad *recvd_mad,
     struct opa_vnic_vema_mad *rsp_mad)
{
 struct opa_veswport_mactable *mac_tbl_in, *mac_tbl_out;
 struct opa_vnic_adapter *adapter;

 adapter = vema_get_vport_adapter(recvd_mad, port);
 if (!adapter) {
  rsp_mad->mad_hdr.status = OPA_VNIC_INVAL_ATTR;
  return;
 }

 mac_tbl_in = (struct opa_veswport_mactable *)recvd_mad->data;
 mac_tbl_out = (struct opa_veswport_mactable *)rsp_mad->data;

 if (vema_mac_tbl_req_ok(mac_tbl_in)) {
  mac_tbl_out->offset = mac_tbl_in->offset;
  mac_tbl_out->num_entries = mac_tbl_in->num_entries;
  opa_vnic_query_mac_tbl(adapter, mac_tbl_out);
 } else {
  rsp_mad->mad_hdr.status = OPA_VNIC_INVAL_ATTR;
 }
}
