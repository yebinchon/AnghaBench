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
struct dcn10_mpc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MPCC_BUSY ; 
 int /*<<< orphan*/  MPCC_IDLE ; 
 int /*<<< orphan*/ * MPCC_STATUS ; 
 int /*<<< orphan*/ * MPCC_TOP_SEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct dcn10_mpc* FUNC3 (struct mpc*) ; 

void FUNC4(struct mpc *mpc, int mpcc_id)
{
	struct dcn10_mpc *mpc10 = FUNC3(mpc);
	unsigned int top_sel, mpc_busy, mpc_idle;

	FUNC1(MPCC_TOP_SEL[mpcc_id],
			MPCC_TOP_SEL, &top_sel);

	if (top_sel == 0xf) {
		FUNC2(MPCC_STATUS[mpcc_id],
				MPCC_BUSY, &mpc_busy,
				MPCC_IDLE, &mpc_idle);

		FUNC0(mpc_busy == 0);
		FUNC0(mpc_idle == 1);
	}
}