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
struct TYPE_4__ {int /*<<< orphan*/  lid; int /*<<< orphan*/  new_sys_guid; } ;
struct TYPE_5__ {int /*<<< orphan*/  issuer_lid; TYPE_1__ ntc_145; } ;
struct trap_node {int len; TYPE_2__ data; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_NOTICE_TYPE_INFO ; 
 int /*<<< orphan*/  OPA_TRAP_CHANGE_SYSGUID ; 
 struct trap_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_hfi1_sys_image_guid ; 
 TYPE_3__* FUNC1 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ibport*,struct trap_node*) ; 

void FUNC3(struct hfi1_ibport *ibp)
{
	struct trap_node *trap;
	u32 lid = FUNC1(ibp)->lid;

	trap = FUNC0(IB_NOTICE_TYPE_INFO, OPA_TRAP_CHANGE_SYSGUID,
				lid);
	if (!trap)
		return;

	trap->data.ntc_145.new_sys_guid = ib_hfi1_sys_image_guid;
	trap->data.ntc_145.lid = trap->data.issuer_lid;

	trap->len = sizeof(trap->data);
	FUNC2(ibp, trap);
}