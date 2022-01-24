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
struct __opa_vesw_info {int /*<<< orphan*/  rsvd4; int /*<<< orphan*/  eth_mtu; int /*<<< orphan*/  rsvd3; int /*<<< orphan*/  rc; int /*<<< orphan*/ * u_ucast_dlid; int /*<<< orphan*/  u_mcast_dlid; int /*<<< orphan*/  rsvd2; int /*<<< orphan*/  pkey; int /*<<< orphan*/  rsvd1; int /*<<< orphan*/  def_port_mask; int /*<<< orphan*/  rsvd0; int /*<<< orphan*/  vesw_id; int /*<<< orphan*/  fabric_id; } ;
struct TYPE_2__ {struct __opa_vesw_info vesw; } ;
struct opa_vnic_adapter {TYPE_1__ info; } ;
struct opa_vesw_info {int /*<<< orphan*/  rsvd4; void* eth_mtu; int /*<<< orphan*/  rsvd3; void* rc; void** u_ucast_dlid; void* u_mcast_dlid; int /*<<< orphan*/  rsvd2; void* pkey; int /*<<< orphan*/  rsvd1; void* def_port_mask; int /*<<< orphan*/  rsvd0; void* vesw_id; void* fabric_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OPA_VESW_MAX_NUM_DEF_PORT ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct opa_vnic_adapter *adapter,
			    struct opa_vesw_info *info)
{
	struct __opa_vesw_info *src = &adapter->info.vesw;
	int i;

	info->fabric_id = FUNC1(src->fabric_id);
	info->vesw_id = FUNC1(src->vesw_id);
	FUNC3(info->rsvd0, src->rsvd0, FUNC0(src->rsvd0));
	info->def_port_mask = FUNC1(src->def_port_mask);
	FUNC3(info->rsvd1, src->rsvd1, FUNC0(src->rsvd1));
	info->pkey = FUNC1(src->pkey);

	FUNC3(info->rsvd2, src->rsvd2, FUNC0(src->rsvd2));
	info->u_mcast_dlid = FUNC2(src->u_mcast_dlid);
	for (i = 0; i < OPA_VESW_MAX_NUM_DEF_PORT; i++)
		info->u_ucast_dlid[i] = FUNC2(src->u_ucast_dlid[i]);

	info->rc = FUNC2(src->rc);

	FUNC3(info->rsvd3, src->rsvd3, FUNC0(src->rsvd3));
	info->eth_mtu = FUNC1(src->eth_mtu);
	FUNC3(info->rsvd4, src->rsvd4, FUNC0(src->rsvd4));
}