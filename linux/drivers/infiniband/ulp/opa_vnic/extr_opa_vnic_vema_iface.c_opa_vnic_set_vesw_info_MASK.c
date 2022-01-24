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
struct __opa_vesw_info {int /*<<< orphan*/  rsvd4; void* eth_mtu; int /*<<< orphan*/  rsvd3; void* rc; void** u_ucast_dlid; void* u_mcast_dlid; int /*<<< orphan*/  rsvd2; void* pkey; int /*<<< orphan*/  rsvd1; void* def_port_mask; int /*<<< orphan*/  rsvd0; void* vesw_id; void* fabric_id; } ;
struct TYPE_2__ {struct __opa_vesw_info vesw; } ;
struct opa_vnic_adapter {TYPE_1__ info; } ;
struct opa_vesw_info {int /*<<< orphan*/  rsvd4; int /*<<< orphan*/  eth_mtu; int /*<<< orphan*/  rsvd3; int /*<<< orphan*/  rc; int /*<<< orphan*/ * u_ucast_dlid; int /*<<< orphan*/  u_mcast_dlid; int /*<<< orphan*/  rsvd2; int /*<<< orphan*/  pkey; int /*<<< orphan*/  rsvd1; int /*<<< orphan*/  def_port_mask; int /*<<< orphan*/  rsvd0; int /*<<< orphan*/  vesw_id; int /*<<< orphan*/  fabric_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OPA_VESW_MAX_NUM_DEF_PORT ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct opa_vnic_adapter *adapter,
			    struct opa_vesw_info *info)
{
	struct __opa_vesw_info *dst = &adapter->info.vesw;
	int i;

	dst->fabric_id = FUNC1(info->fabric_id);
	dst->vesw_id = FUNC1(info->vesw_id);
	FUNC3(dst->rsvd0, info->rsvd0, FUNC0(info->rsvd0));
	dst->def_port_mask = FUNC1(info->def_port_mask);
	FUNC3(dst->rsvd1, info->rsvd1, FUNC0(info->rsvd1));
	dst->pkey = FUNC1(info->pkey);

	FUNC3(dst->rsvd2, info->rsvd2, FUNC0(info->rsvd2));
	dst->u_mcast_dlid = FUNC2(info->u_mcast_dlid);
	for (i = 0; i < OPA_VESW_MAX_NUM_DEF_PORT; i++)
		dst->u_ucast_dlid[i] = FUNC2(info->u_ucast_dlid[i]);

	dst->rc = FUNC2(info->rc);

	FUNC3(dst->rsvd3, info->rsvd3, FUNC0(info->rsvd3));
	dst->eth_mtu = FUNC1(info->eth_mtu);
	FUNC3(dst->rsvd4, info->rsvd4, FUNC0(info->rsvd4));
}