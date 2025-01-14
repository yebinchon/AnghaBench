
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* eth_mtu; } ;
struct TYPE_3__ {void* config_state; void* oper_state; void* max_smac_ent; void* max_mac_tbl_ent; } ;
struct opa_veswport_info {TYPE_2__ vesw; TYPE_1__ vport; } ;


 int ETH_DATA_LEN ;
 int OPA_VNIC_MAC_TBL_MAX_ENTRIES ;
 int OPA_VNIC_MAX_SMAC_LIMIT ;
 void* OPA_VNIC_STATE_DROP_ALL ;
 void* cpu_to_be16 (int ) ;
 int memset (struct opa_veswport_info*,int ,int) ;

__attribute__((used)) static inline void vema_get_pod_values(struct opa_veswport_info *port_info)
{
 memset(port_info, 0, sizeof(*port_info));
 port_info->vport.max_mac_tbl_ent =
  cpu_to_be16(OPA_VNIC_MAC_TBL_MAX_ENTRIES);
 port_info->vport.max_smac_ent =
  cpu_to_be16(OPA_VNIC_MAX_SMAC_LIMIT);
 port_info->vport.oper_state = OPA_VNIC_STATE_DROP_ALL;
 port_info->vport.config_state = OPA_VNIC_STATE_DROP_ALL;
 port_info->vesw.eth_mtu = cpu_to_be16(ETH_DATA_LEN);
}
