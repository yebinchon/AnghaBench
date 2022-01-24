#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  cap_mask3; int /*<<< orphan*/  new_cap_mask; int /*<<< orphan*/  lid; } ;
struct TYPE_8__ {TYPE_2__ ntc_144; int /*<<< orphan*/  issuer_lid; } ;
struct trap_node {int len; TYPE_3__ data; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  port_cap3_flags; int /*<<< orphan*/  port_cap_flags; } ;
struct hfi1_ibport {TYPE_4__ rvp; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {TYPE_1__* pport; } ;
struct TYPE_10__ {int /*<<< orphan*/  lid; } ;
struct TYPE_6__ {struct hfi1_ibport ibport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_NOTICE_TYPE_INFO ; 
 int /*<<< orphan*/  OPA_TRAP_CHANGE_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct trap_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC3 (struct hfi1_ibdev*) ; 
 struct hfi1_ibdev* FUNC4 (struct rvt_dev_info*) ; 
 TYPE_5__* FUNC5 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_ibport*,struct trap_node*) ; 

void FUNC7(struct rvt_dev_info *rdi, u8 port_num)
{
	struct trap_node *trap;
	struct hfi1_ibdev *verbs_dev = FUNC4(rdi);
	struct hfi1_devdata *dd = FUNC3(verbs_dev);
	struct hfi1_ibport *ibp = &dd->pport[port_num - 1].ibport_data;
	u32 lid = FUNC5(ibp)->lid;

	trap = FUNC2(IB_NOTICE_TYPE_INFO,
				OPA_TRAP_CHANGE_CAPABILITY,
				lid);
	if (!trap)
		return;

	trap->data.ntc_144.lid = trap->data.issuer_lid;
	trap->data.ntc_144.new_cap_mask = FUNC1(ibp->rvp.port_cap_flags);
	trap->data.ntc_144.cap_mask3 = FUNC0(ibp->rvp.port_cap3_flags);

	trap->len = sizeof(trap->data);
	FUNC6(ibp, trap);
}