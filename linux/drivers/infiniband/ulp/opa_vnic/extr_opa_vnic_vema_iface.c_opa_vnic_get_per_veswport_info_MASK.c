#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct __opa_per_veswport_info {int /*<<< orphan*/  rsvd3; int /*<<< orphan*/  mc_macs_gen_count; int /*<<< orphan*/  uc_macs_gen_count; int /*<<< orphan*/  rsvd2; int /*<<< orphan*/  non_vlan_vl_mc; int /*<<< orphan*/  non_vlan_sc_mc; int /*<<< orphan*/  non_vlan_vl_uc; int /*<<< orphan*/  non_vlan_sc_uc; int /*<<< orphan*/  pcp_to_vl_mc; int /*<<< orphan*/  pcp_to_sc_mc; int /*<<< orphan*/  pcp_to_vl_uc; int /*<<< orphan*/  pcp_to_sc_uc; int /*<<< orphan*/  encap_slid; int /*<<< orphan*/  rsvd1; int /*<<< orphan*/  mac_tbl_digest; int /*<<< orphan*/  max_smac_ent; int /*<<< orphan*/  max_mac_tbl_ent; int /*<<< orphan*/  oper_state; int /*<<< orphan*/  config_state; int /*<<< orphan*/  base_mac_addr; int /*<<< orphan*/  rsvd0; int /*<<< orphan*/  eth_link_status; int /*<<< orphan*/  port_num; } ;
struct TYPE_2__ {struct __opa_per_veswport_info vport; } ;
struct opa_vnic_adapter {TYPE_1__ info; } ;
struct opa_per_veswport_info {int /*<<< orphan*/  rsvd3; void* mc_macs_gen_count; void* uc_macs_gen_count; int /*<<< orphan*/  rsvd2; int /*<<< orphan*/  non_vlan_vl_mc; int /*<<< orphan*/  non_vlan_sc_mc; int /*<<< orphan*/  non_vlan_vl_uc; int /*<<< orphan*/  non_vlan_sc_uc; int /*<<< orphan*/  pcp_to_vl_mc; int /*<<< orphan*/  pcp_to_sc_mc; int /*<<< orphan*/  pcp_to_vl_uc; int /*<<< orphan*/  pcp_to_sc_uc; void* encap_slid; int /*<<< orphan*/  rsvd1; void* mac_tbl_digest; void* max_smac_ent; void* max_mac_tbl_ent; int /*<<< orphan*/  oper_state; int /*<<< orphan*/  config_state; int /*<<< orphan*/  base_mac_addr; int /*<<< orphan*/  rsvd0; int /*<<< orphan*/  eth_link_status; void* port_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct opa_vnic_adapter *adapter,
				    struct opa_per_veswport_info *info)
{
	struct __opa_per_veswport_info *src = &adapter->info.vport;

	info->port_num = FUNC2(src->port_num);
	info->eth_link_status = src->eth_link_status;
	FUNC3(info->rsvd0, src->rsvd0, FUNC0(src->rsvd0));

	FUNC3(info->base_mac_addr, src->base_mac_addr,
	       FUNC0(info->base_mac_addr));
	info->config_state = src->config_state;
	info->oper_state = src->oper_state;
	info->max_mac_tbl_ent = FUNC1(src->max_mac_tbl_ent);
	info->max_smac_ent = FUNC1(src->max_smac_ent);
	info->mac_tbl_digest = FUNC2(src->mac_tbl_digest);
	FUNC3(info->rsvd1, src->rsvd1, FUNC0(src->rsvd1));

	info->encap_slid = FUNC2(src->encap_slid);
	FUNC3(info->pcp_to_sc_uc, src->pcp_to_sc_uc,
	       FUNC0(info->pcp_to_sc_uc));
	FUNC3(info->pcp_to_vl_uc, src->pcp_to_vl_uc,
	       FUNC0(info->pcp_to_vl_uc));
	FUNC3(info->pcp_to_sc_mc, src->pcp_to_sc_mc,
	       FUNC0(info->pcp_to_sc_mc));
	FUNC3(info->pcp_to_vl_mc, src->pcp_to_vl_mc,
	       FUNC0(info->pcp_to_vl_mc));
	info->non_vlan_sc_uc = src->non_vlan_sc_uc;
	info->non_vlan_vl_uc = src->non_vlan_vl_uc;
	info->non_vlan_sc_mc = src->non_vlan_sc_mc;
	info->non_vlan_vl_mc = src->non_vlan_vl_mc;
	FUNC3(info->rsvd2, src->rsvd2, FUNC0(src->rsvd2));

	info->uc_macs_gen_count = FUNC1(src->uc_macs_gen_count);
	info->mc_macs_gen_count = FUNC1(src->mc_macs_gen_count);
	FUNC3(info->rsvd3, src->rsvd3, FUNC0(src->rsvd3));
}