
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __opa_per_veswport_info {int rsvd3; int mc_macs_gen_count; int uc_macs_gen_count; int rsvd2; int non_vlan_vl_mc; int non_vlan_sc_mc; int non_vlan_vl_uc; int non_vlan_sc_uc; int pcp_to_vl_mc; int pcp_to_sc_mc; int pcp_to_vl_uc; int pcp_to_sc_uc; int encap_slid; int rsvd1; int mac_tbl_digest; int max_smac_ent; int max_mac_tbl_ent; int oper_state; int config_state; int base_mac_addr; int rsvd0; int eth_link_status; int port_num; } ;
struct TYPE_2__ {struct __opa_per_veswport_info vport; } ;
struct opa_vnic_adapter {TYPE_1__ info; } ;
struct opa_per_veswport_info {int rsvd3; void* mc_macs_gen_count; void* uc_macs_gen_count; int rsvd2; int non_vlan_vl_mc; int non_vlan_sc_mc; int non_vlan_vl_uc; int non_vlan_sc_uc; int pcp_to_vl_mc; int pcp_to_sc_mc; int pcp_to_vl_uc; int pcp_to_sc_uc; void* encap_slid; int rsvd1; void* mac_tbl_digest; void* max_smac_ent; void* max_mac_tbl_ent; int oper_state; int config_state; int base_mac_addr; int rsvd0; int eth_link_status; void* port_num; } ;


 int ARRAY_SIZE (int ) ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int memcpy (int ,int ,int ) ;

void opa_vnic_get_per_veswport_info(struct opa_vnic_adapter *adapter,
        struct opa_per_veswport_info *info)
{
 struct __opa_per_veswport_info *src = &adapter->info.vport;

 info->port_num = cpu_to_be32(src->port_num);
 info->eth_link_status = src->eth_link_status;
 memcpy(info->rsvd0, src->rsvd0, ARRAY_SIZE(src->rsvd0));

 memcpy(info->base_mac_addr, src->base_mac_addr,
        ARRAY_SIZE(info->base_mac_addr));
 info->config_state = src->config_state;
 info->oper_state = src->oper_state;
 info->max_mac_tbl_ent = cpu_to_be16(src->max_mac_tbl_ent);
 info->max_smac_ent = cpu_to_be16(src->max_smac_ent);
 info->mac_tbl_digest = cpu_to_be32(src->mac_tbl_digest);
 memcpy(info->rsvd1, src->rsvd1, ARRAY_SIZE(src->rsvd1));

 info->encap_slid = cpu_to_be32(src->encap_slid);
 memcpy(info->pcp_to_sc_uc, src->pcp_to_sc_uc,
        ARRAY_SIZE(info->pcp_to_sc_uc));
 memcpy(info->pcp_to_vl_uc, src->pcp_to_vl_uc,
        ARRAY_SIZE(info->pcp_to_vl_uc));
 memcpy(info->pcp_to_sc_mc, src->pcp_to_sc_mc,
        ARRAY_SIZE(info->pcp_to_sc_mc));
 memcpy(info->pcp_to_vl_mc, src->pcp_to_vl_mc,
        ARRAY_SIZE(info->pcp_to_vl_mc));
 info->non_vlan_sc_uc = src->non_vlan_sc_uc;
 info->non_vlan_vl_uc = src->non_vlan_vl_uc;
 info->non_vlan_sc_mc = src->non_vlan_sc_mc;
 info->non_vlan_vl_mc = src->non_vlan_vl_mc;
 memcpy(info->rsvd2, src->rsvd2, ARRAY_SIZE(src->rsvd2));

 info->uc_macs_gen_count = cpu_to_be16(src->uc_macs_gen_count);
 info->mc_macs_gen_count = cpu_to_be16(src->mc_macs_gen_count);
 memcpy(info->rsvd3, src->rsvd3, ARRAY_SIZE(src->rsvd3));
}
