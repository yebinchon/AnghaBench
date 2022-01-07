
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_vnic_vema_port {int class_port_info; } ;
struct opa_vnic_vema_mad {scalar_t__ data; } ;
struct opa_class_port_info {int cap_mask2_resp_time; int cap_mask; int class_version; int base_version; } ;


 int OPA_EMA_CLASS_VERSION ;
 int OPA_MGMT_BASE_VERSION ;
 int OPA_VNIC_CLASS_CAP_TRAP ;
 int OPA_VNIC_MAX_NUM_VPORT ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 int memcpy (struct opa_class_port_info*,int *,int) ;

__attribute__((used)) static void vema_get_class_port_info(struct opa_vnic_vema_port *port,
         struct opa_vnic_vema_mad *recvd_mad,
         struct opa_vnic_vema_mad *rsp_mad)
{
 struct opa_class_port_info *port_info;

 port_info = (struct opa_class_port_info *)rsp_mad->data;
 memcpy(port_info, &port->class_port_info, sizeof(*port_info));
 port_info->base_version = OPA_MGMT_BASE_VERSION,
 port_info->class_version = OPA_EMA_CLASS_VERSION;





 port_info->cap_mask = cpu_to_be16((OPA_VNIC_CLASS_CAP_TRAP |
        (OPA_VNIC_MAX_NUM_VPORT << 8)));






 port_info->cap_mask2_resp_time = cpu_to_be32(18);
}
