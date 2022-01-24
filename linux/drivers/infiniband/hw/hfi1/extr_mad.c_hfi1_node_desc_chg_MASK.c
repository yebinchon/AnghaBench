#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  change_flags; int /*<<< orphan*/  lid; } ;
struct TYPE_5__ {TYPE_1__ ntc_144; int /*<<< orphan*/  issuer_lid; } ;
struct trap_node {int len; TYPE_2__ data; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_NOTICE_TYPE_INFO ; 
 int /*<<< orphan*/  OPA_NOTICE_TRAP_NODE_DESC_CHG ; 
 int /*<<< orphan*/  OPA_TRAP_CHANGE_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct trap_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ibport*,struct trap_node*) ; 

void FUNC4(struct hfi1_ibport *ibp)
{
	struct trap_node *trap;
	u32 lid = FUNC2(ibp)->lid;

	trap = FUNC1(IB_NOTICE_TYPE_INFO,
				OPA_TRAP_CHANGE_CAPABILITY,
				lid);
	if (!trap)
		return;

	trap->data.ntc_144.lid = trap->data.issuer_lid;
	trap->data.ntc_144.change_flags =
		FUNC0(OPA_NOTICE_TRAP_NODE_DESC_CHG);

	trap->len = sizeof(trap->data);
	FUNC3(ibp, trap);
}