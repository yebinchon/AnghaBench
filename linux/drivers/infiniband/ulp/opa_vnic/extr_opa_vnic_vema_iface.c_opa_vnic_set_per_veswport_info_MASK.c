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
struct __opa_per_veswport_info {int /*<<< orphan*/  rsvd3; int /*<<< orphan*/  rsvd2; int /*<<< orphan*/  non_vlan_vl_mc; int /*<<< orphan*/  non_vlan_sc_mc; int /*<<< orphan*/  non_vlan_vl_uc; int /*<<< orphan*/  non_vlan_sc_uc; int /*<<< orphan*/  pcp_to_vl_mc; int /*<<< orphan*/  pcp_to_sc_mc; int /*<<< orphan*/  pcp_to_vl_uc; int /*<<< orphan*/  pcp_to_sc_uc; void* encap_slid; int /*<<< orphan*/  rsvd1; int /*<<< orphan*/  config_state; int /*<<< orphan*/  base_mac_addr; int /*<<< orphan*/  rsvd0; void* port_num; } ;
struct TYPE_2__ {struct __opa_per_veswport_info vport; } ;
struct opa_vnic_adapter {TYPE_1__ info; } ;
struct opa_per_veswport_info {int /*<<< orphan*/  rsvd3; int /*<<< orphan*/  rsvd2; int /*<<< orphan*/  non_vlan_vl_mc; int /*<<< orphan*/  non_vlan_sc_mc; int /*<<< orphan*/  non_vlan_vl_uc; int /*<<< orphan*/  non_vlan_sc_uc; int /*<<< orphan*/  pcp_to_vl_mc; int /*<<< orphan*/  pcp_to_sc_mc; int /*<<< orphan*/  pcp_to_vl_uc; int /*<<< orphan*/  pcp_to_sc_uc; int /*<<< orphan*/  encap_slid; int /*<<< orphan*/  rsvd1; int /*<<< orphan*/  config_state; int /*<<< orphan*/  base_mac_addr; int /*<<< orphan*/  rsvd0; int /*<<< orphan*/  port_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct opa_vnic_adapter *adapter,
				    struct opa_per_veswport_info *info)
{
	struct __opa_per_veswport_info *dst = &adapter->info.vport;

	dst->port_num = FUNC1(info->port_num);
	FUNC2(dst->rsvd0, info->rsvd0, FUNC0(info->rsvd0));

	FUNC2(dst->base_mac_addr, info->base_mac_addr,
	       FUNC0(dst->base_mac_addr));
	dst->config_state = info->config_state;
	FUNC2(dst->rsvd1, info->rsvd1, FUNC0(info->rsvd1));

	dst->encap_slid = FUNC1(info->encap_slid);
	FUNC2(dst->pcp_to_sc_uc, info->pcp_to_sc_uc,
	       FUNC0(dst->pcp_to_sc_uc));
	FUNC2(dst->pcp_to_vl_uc, info->pcp_to_vl_uc,
	       FUNC0(dst->pcp_to_vl_uc));
	FUNC2(dst->pcp_to_sc_mc, info->pcp_to_sc_mc,
	       FUNC0(dst->pcp_to_sc_mc));
	FUNC2(dst->pcp_to_vl_mc, info->pcp_to_vl_mc,
	       FUNC0(dst->pcp_to_vl_mc));
	dst->non_vlan_sc_uc = info->non_vlan_sc_uc;
	dst->non_vlan_vl_uc = info->non_vlan_vl_uc;
	dst->non_vlan_sc_mc = info->non_vlan_sc_mc;
	dst->non_vlan_vl_mc = info->non_vlan_vl_mc;
	FUNC2(dst->rsvd2, info->rsvd2, FUNC0(info->rsvd2));
	FUNC2(dst->rsvd3, info->rsvd3, FUNC0(info->rsvd3));
}