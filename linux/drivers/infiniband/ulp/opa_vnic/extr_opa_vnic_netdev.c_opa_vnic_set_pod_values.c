
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int eth_mtu; } ;
struct TYPE_4__ {int eth_link_status; int config_state; int max_smac_ent; int max_mac_tbl_ent; } ;
struct TYPE_5__ {TYPE_3__ vesw; TYPE_1__ vport; } ;
struct opa_vnic_adapter {TYPE_2__ info; } ;


 int ETH_DATA_LEN ;
 int OPA_VNIC_ETH_LINK_DOWN ;
 int OPA_VNIC_MAC_TBL_MAX_ENTRIES ;
 int OPA_VNIC_MAX_SMAC_LIMIT ;
 int OPA_VNIC_STATE_DROP_ALL ;

__attribute__((used)) static inline void opa_vnic_set_pod_values(struct opa_vnic_adapter *adapter)
{
 adapter->info.vport.max_mac_tbl_ent = OPA_VNIC_MAC_TBL_MAX_ENTRIES;
 adapter->info.vport.max_smac_ent = OPA_VNIC_MAX_SMAC_LIMIT;
 adapter->info.vport.config_state = OPA_VNIC_STATE_DROP_ALL;
 adapter->info.vport.eth_link_status = OPA_VNIC_ETH_LINK_DOWN;
 adapter->info.vesw.eth_mtu = ETH_DATA_LEN;
}
