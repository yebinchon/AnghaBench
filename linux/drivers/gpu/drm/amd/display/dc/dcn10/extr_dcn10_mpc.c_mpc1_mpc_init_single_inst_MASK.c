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
struct mpc {int /*<<< orphan*/ * mpcc_array; } ;
struct dcn10_mpc {int dummy; } ;

/* Variables and functions */
 int MAX_OPP ; 
 int /*<<< orphan*/ * MPCC_BOT_SEL ; 
 int /*<<< orphan*/ * MPCC_OPP_ID ; 
 int /*<<< orphan*/ * MPCC_TOP_SEL ; 
 int /*<<< orphan*/  MPC_OUT_MUX ; 
 int /*<<< orphan*/ * MUX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn10_mpc* FUNC4 (struct mpc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

void FUNC6(struct mpc *mpc, unsigned int mpcc_id)
{
	struct dcn10_mpc *mpc10 = FUNC4(mpc);
	int opp_id;

	FUNC1(MPCC_OPP_ID[mpcc_id], MPCC_OPP_ID, &opp_id);

	FUNC2(MPCC_TOP_SEL[mpcc_id], 0, MPCC_TOP_SEL, 0xf);
	FUNC2(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, 0xf);
	FUNC2(MPCC_OPP_ID[mpcc_id],  0, MPCC_OPP_ID,  0xf);

	FUNC5(&(mpc->mpcc_array[mpcc_id]), mpcc_id);

	if (opp_id < MAX_OPP && FUNC0(MUX[opp_id]))
		FUNC3(MUX[opp_id], MPC_OUT_MUX, 0xf);
}