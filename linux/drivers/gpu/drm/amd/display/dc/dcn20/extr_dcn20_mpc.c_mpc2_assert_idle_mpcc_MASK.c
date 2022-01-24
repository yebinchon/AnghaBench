#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mpc {int dummy; } ;
struct dcn20_mpc {int mpcc_in_use_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MPCC_DISABLED ; 
 int /*<<< orphan*/  MPCC_IDLE ; 
 int /*<<< orphan*/ * MPCC_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct dcn20_mpc* FUNC3 (struct mpc*) ; 

void FUNC4(struct mpc *mpc, int id)
{
	struct dcn20_mpc *mpc20 = FUNC3(mpc);
	unsigned int mpc_disabled;

	FUNC0(!(mpc20->mpcc_in_use_mask & 1 << id));
	FUNC1(MPCC_STATUS[id], MPCC_DISABLED, &mpc_disabled);
	if (mpc_disabled)
		return;

	FUNC2(MPCC_STATUS[id],
			MPCC_IDLE, 1,
			1, 100000);
}