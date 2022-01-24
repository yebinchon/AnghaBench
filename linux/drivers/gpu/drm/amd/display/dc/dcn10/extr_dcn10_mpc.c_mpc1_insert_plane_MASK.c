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
struct mpcc_sm_cfg {int dummy; } ;
struct mpcc_blnd_cfg {int dummy; } ;
struct mpcc {int dpp_id; int mpcc_id; struct mpcc_sm_cfg sm_cfg; struct mpcc* mpcc_bot; } ;
struct mpc_tree {int opp_id; struct mpcc* opp_list; } ;
struct mpc {TYPE_1__* funcs; } ;
struct dcn10_mpc {int num_mpcc; int mpcc_in_use_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_blending ) (struct mpc*,struct mpcc_blnd_cfg*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MPCC_BLEND_MODE_TOP_BOT_BLENDING ; 
 int MPCC_BLEND_MODE_TOP_LAYER_ONLY ; 
 int /*<<< orphan*/ * MPCC_BOT_SEL ; 
 int /*<<< orphan*/ * MPCC_CONTROL ; 
 int /*<<< orphan*/  MPCC_MODE ; 
 int /*<<< orphan*/ * MPCC_OPP_ID ; 
 int /*<<< orphan*/ * MPCC_TOP_SEL ; 
 int /*<<< orphan*/  MPC_OUT_MUX ; 
 int /*<<< orphan*/ * MUX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn10_mpc* FUNC3 (struct mpc*) ; 
 struct mpcc* FUNC4 (struct mpc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc*,struct mpcc_sm_cfg*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mpc*,struct mpcc_blnd_cfg*,int) ; 

struct mpcc *FUNC7(
	struct mpc *mpc,
	struct mpc_tree *tree,
	struct mpcc_blnd_cfg *blnd_cfg,
	struct mpcc_sm_cfg *sm_cfg,
	struct mpcc *insert_above_mpcc,
	int dpp_id,
	int mpcc_id)
{
	struct dcn10_mpc *mpc10 = FUNC3(mpc);
	struct mpcc *new_mpcc = NULL;

	/* sanity check parameters */
	FUNC0(mpcc_id < mpc10->num_mpcc);
	FUNC0(!(mpc10->mpcc_in_use_mask & 1 << mpcc_id));

	if (insert_above_mpcc) {
		/* check insert_above_mpcc exist in tree->opp_list */
		struct mpcc *temp_mpcc = tree->opp_list;

		while (temp_mpcc && temp_mpcc->mpcc_bot != insert_above_mpcc)
			temp_mpcc = temp_mpcc->mpcc_bot;
		if (temp_mpcc == NULL)
			return NULL;
	}

	/* Get and update MPCC struct parameters */
	new_mpcc = FUNC4(mpc, mpcc_id);
	new_mpcc->dpp_id = dpp_id;

	/* program mux and MPCC_MODE */
	if (insert_above_mpcc) {
		new_mpcc->mpcc_bot = insert_above_mpcc;
		FUNC1(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, insert_above_mpcc->mpcc_id);
		FUNC2(MPCC_CONTROL[mpcc_id], MPCC_MODE, MPCC_BLEND_MODE_TOP_BOT_BLENDING);
	} else {
		new_mpcc->mpcc_bot = NULL;
		FUNC1(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, 0xf);
		FUNC2(MPCC_CONTROL[mpcc_id], MPCC_MODE, MPCC_BLEND_MODE_TOP_LAYER_ONLY);
	}
	FUNC1(MPCC_TOP_SEL[mpcc_id], 0, MPCC_TOP_SEL, dpp_id);
	FUNC1(MPCC_OPP_ID[mpcc_id], 0, MPCC_OPP_ID, tree->opp_id);

	/* update mpc tree mux setting */
	if (tree->opp_list == insert_above_mpcc) {
		/* insert the toppest mpcc */
		tree->opp_list = new_mpcc;
		FUNC2(MUX[tree->opp_id], MPC_OUT_MUX, mpcc_id);
	} else {
		/* find insert position */
		struct mpcc *temp_mpcc = tree->opp_list;

		while (temp_mpcc && temp_mpcc->mpcc_bot != insert_above_mpcc)
			temp_mpcc = temp_mpcc->mpcc_bot;
		if (temp_mpcc && temp_mpcc->mpcc_bot == insert_above_mpcc) {
			FUNC1(MPCC_BOT_SEL[temp_mpcc->mpcc_id], 0, MPCC_BOT_SEL, mpcc_id);
			temp_mpcc->mpcc_bot = new_mpcc;
			if (!insert_above_mpcc)
				FUNC2(MPCC_CONTROL[temp_mpcc->mpcc_id],
						MPCC_MODE, MPCC_BLEND_MODE_TOP_BOT_BLENDING);
		}
	}

	/* update the blending configuration */
	mpc->funcs->update_blending(mpc, blnd_cfg, mpcc_id);

	/* update the stereo mix settings, if provided */
	if (sm_cfg != NULL) {
		new_mpcc->sm_cfg = *sm_cfg;
		FUNC5(mpc, sm_cfg, mpcc_id);
	}

	/* mark this mpcc as in use */
	mpc10->mpcc_in_use_mask |= 1 << mpcc_id;

	return new_mpcc;
}