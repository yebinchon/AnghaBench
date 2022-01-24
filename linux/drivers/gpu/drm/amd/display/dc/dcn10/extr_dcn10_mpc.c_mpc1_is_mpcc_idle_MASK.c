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
 int /*<<< orphan*/ * MPCC_IDLE ; 
 int /*<<< orphan*/ * MPCC_OPP_ID ; 
 int /*<<< orphan*/ * MPCC_STATUS ; 
 int /*<<< orphan*/ * MPCC_TOP_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 struct dcn10_mpc* FUNC1 (struct mpc*) ; 

bool FUNC2(struct mpc *mpc, int mpcc_id)
{
	struct dcn10_mpc *mpc10 = FUNC1(mpc);
	unsigned int top_sel;
	unsigned int opp_id;
	unsigned int idle;

	FUNC0(MPCC_TOP_SEL[mpcc_id], MPCC_TOP_SEL, &top_sel);
	FUNC0(MPCC_OPP_ID[mpcc_id],  MPCC_OPP_ID, &opp_id);
	FUNC0(MPCC_STATUS[mpcc_id],  MPCC_IDLE,   &idle);
	if (top_sel == 0xf && opp_id == 0xf && idle)
		return true;
	else
		return false;
}