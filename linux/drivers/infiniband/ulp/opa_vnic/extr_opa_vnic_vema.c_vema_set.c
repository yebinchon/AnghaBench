
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct opa_vnic_vema_port {int dummy; } ;
struct TYPE_2__ {int status; int attr_id; } ;
struct opa_vnic_vema_mad {TYPE_1__ mad_hdr; } ;






 int OPA_VNIC_UNSUP_ATTR ;
 int be16_to_cpu (int ) ;
 int vema_set_class_port_info (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;
 int vema_set_delete_vesw (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;
 int vema_set_mac_entries (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;
 int vema_set_veswport_info (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;

__attribute__((used)) static void vema_set(struct opa_vnic_vema_port *port,
       struct opa_vnic_vema_mad *recvd_mad,
       struct opa_vnic_vema_mad *rsp_mad)
{
 u16 attr_id = be16_to_cpu(recvd_mad->mad_hdr.attr_id);

 switch (attr_id) {
 case 131:
  vema_set_class_port_info(port, recvd_mad, rsp_mad);
  break;
 case 129:
  vema_set_veswport_info(port, recvd_mad, rsp_mad);
  break;
 case 128:
  vema_set_mac_entries(port, recvd_mad, rsp_mad);
  break;
 case 130:
  vema_set_delete_vesw(port, recvd_mad, rsp_mad);
  break;
 default:
  rsp_mad->mad_hdr.status = OPA_VNIC_UNSUP_ATTR;
  break;
 }
}
