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
struct mpcc_state {int /*<<< orphan*/  busy; int /*<<< orphan*/  idle; int /*<<< orphan*/  overlap_only; int /*<<< orphan*/  pre_multiplied_alpha; int /*<<< orphan*/  alpha_mode; int /*<<< orphan*/  mode; int /*<<< orphan*/  bot_mpcc_id; int /*<<< orphan*/  dpp_id; int /*<<< orphan*/  opp_id; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPCC_ALPHA_BLND_MODE ; 
 int /*<<< orphan*/  MPCC_ALPHA_MULTIPLIED_MODE ; 
 int /*<<< orphan*/  MPCC_BLND_ACTIVE_OVERLAP_ONLY ; 
 int /*<<< orphan*/ * MPCC_BOT_SEL ; 
 int /*<<< orphan*/  MPCC_BUSY ; 
 int /*<<< orphan*/ * MPCC_CONTROL ; 
 int /*<<< orphan*/  MPCC_IDLE ; 
 int /*<<< orphan*/  MPCC_MODE ; 
 int /*<<< orphan*/ * MPCC_OPP_ID ; 
 int /*<<< orphan*/ * MPCC_STATUS ; 
 int /*<<< orphan*/ * MPCC_TOP_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dcn10_mpc* FUNC3 (struct mpc*) ; 

void FUNC4(
		struct mpc *mpc,
		int mpcc_inst,
		struct mpcc_state *s)
{
	struct dcn10_mpc *mpc10 = FUNC3(mpc);

	FUNC0(MPCC_OPP_ID[mpcc_inst], MPCC_OPP_ID, &s->opp_id);
	FUNC0(MPCC_TOP_SEL[mpcc_inst], MPCC_TOP_SEL, &s->dpp_id);
	FUNC0(MPCC_BOT_SEL[mpcc_inst], MPCC_BOT_SEL, &s->bot_mpcc_id);
	FUNC2(MPCC_CONTROL[mpcc_inst], MPCC_MODE, &s->mode,
			MPCC_ALPHA_BLND_MODE, &s->alpha_mode,
			MPCC_ALPHA_MULTIPLIED_MODE, &s->pre_multiplied_alpha,
			MPCC_BLND_ACTIVE_OVERLAP_ONLY, &s->overlap_only);
	FUNC1(MPCC_STATUS[mpcc_inst], MPCC_IDLE, &s->idle,
			MPCC_BUSY, &s->busy);
}