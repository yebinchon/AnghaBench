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
struct pwl_params {int /*<<< orphan*/  hw_points_num; int /*<<< orphan*/  rgb_resulted; } ;
struct mpc {TYPE_3__* ctx; } ;
struct dcn20_mpc {int dummy; } ;
typedef  enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct TYPE_4__ {scalar_t__ cm_in_bypass; } ;
struct TYPE_5__ {TYPE_1__ debug; } ;

/* Variables and functions */
 int LUT_BYPASS ; 
 int LUT_RAM_A ; 
 int LUT_RAM_B ; 
 int /*<<< orphan*/ * MPCC_OGAM_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct dcn20_mpc* FUNC1 (struct mpc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mpc*,int,int) ; 
 int FUNC4 (struct mpc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mpc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mpc*,int,struct pwl_params const*) ; 
 int /*<<< orphan*/  FUNC8 (struct mpc*,int,struct pwl_params const*) ; 

void FUNC9(
		struct mpc *mpc,
		int mpcc_id,
		const struct pwl_params *params)
{
	enum dc_lut_mode current_mode;
	enum dc_lut_mode next_mode;
	struct dcn20_mpc *mpc20 = FUNC1(mpc);

	if (mpc->ctx->dc->debug.cm_in_bypass) {
		FUNC0(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE, 0);
		return;
	}

	if (params == NULL) {
		FUNC0(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE, 0);
		return;
	}

	current_mode = FUNC4(mpc, mpcc_id);
	if (current_mode == LUT_BYPASS || current_mode == LUT_RAM_A)
		next_mode = LUT_RAM_B;
	else
		next_mode = LUT_RAM_A;

	FUNC5(mpc, mpcc_id, true);
	FUNC3(mpc, mpcc_id, next_mode == LUT_RAM_A ? true:false);

	if (next_mode == LUT_RAM_A)
		FUNC7(mpc, mpcc_id, params);
	else
		FUNC8(mpc, mpcc_id, params);

	FUNC2(mpc, mpcc_id, current_mode, next_mode);

	FUNC6(
			mpc, mpcc_id, params->rgb_resulted, params->hw_points_num);

	FUNC0(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE,
		next_mode == LUT_RAM_A ? 1:2);
}