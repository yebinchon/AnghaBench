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
struct dm_pp_power_level_change_request {scalar_t__ power_level; } ;
struct dce_clk_mgr {scalar_t__ cur_min_clks_state; int /*<<< orphan*/  dfs_bypass_active; } ;
struct TYPE_6__ {int dispclk_khz; } ;
struct TYPE_7__ {TYPE_1__ dce; } ;
struct TYPE_8__ {TYPE_2__ bw; } ;
struct dc_state {TYPE_3__ bw_ctx; } ;
struct TYPE_9__ {int dispclk_khz; } ;
struct clk_mgr {TYPE_5__* ctx; TYPE_4__ clks; } ;
struct TYPE_10__ {int /*<<< orphan*/  dc; } ;

/* Variables and functions */
 struct dce_clk_mgr* FUNC0 (struct clk_mgr*) ; 
 scalar_t__ FUNC1 (struct clk_mgr*,struct dc_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dc_state*) ; 
 int FUNC3 (struct clk_mgr*,int) ; 
 scalar_t__ FUNC4 (TYPE_5__*,struct dm_pp_power_level_change_request*) ; 
 scalar_t__ FUNC5 (int,int,int) ; 

__attribute__((used)) static void FUNC6(struct clk_mgr *clk_mgr,
			struct dc_state *context,
			bool safe_to_lower)
{
	struct dce_clk_mgr *clk_mgr_dce = FUNC0(clk_mgr);
	struct dm_pp_power_level_change_request level_change_req;
	int patched_disp_clk = context->bw_ctx.bw.dce.dispclk_khz;

	/*TODO: W/A for dal3 linux, investigate why this works */
	if (!clk_mgr_dce->dfs_bypass_active)
		patched_disp_clk = patched_disp_clk * 115 / 100;

	level_change_req.power_level = FUNC1(clk_mgr, context);
	/* get max clock state from PPLIB */
	if ((level_change_req.power_level < clk_mgr_dce->cur_min_clks_state && safe_to_lower)
			|| level_change_req.power_level > clk_mgr_dce->cur_min_clks_state) {
		if (FUNC4(clk_mgr->ctx, &level_change_req))
			clk_mgr_dce->cur_min_clks_state = level_change_req.power_level;
	}

	if (FUNC5(safe_to_lower, patched_disp_clk, clk_mgr->clks.dispclk_khz)) {
		patched_disp_clk = FUNC3(clk_mgr, patched_disp_clk);
		clk_mgr->clks.dispclk_khz = patched_disp_clk;
	}
	FUNC2(clk_mgr->ctx->dc, context);
}