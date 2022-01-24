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
struct dm_pp_clock_for_voltage_req {int clocks_in_khz; int /*<<< orphan*/  clk_type; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int dispclk_khz; } ;
struct TYPE_7__ {TYPE_1__ dce; } ;
struct TYPE_8__ {TYPE_2__ bw; } ;
struct dc_state {TYPE_3__ bw_ctx; } ;
struct clk_mgr_internal {scalar_t__ xgmi_enabled; int /*<<< orphan*/  dfs_bypass_active; } ;
struct TYPE_9__ {int dispclk_khz; int phyclk_khz; } ;
struct clk_mgr {TYPE_5__* ctx; TYPE_4__ clks; } ;
struct TYPE_10__ {int /*<<< orphan*/  dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_PP_CLOCK_TYPE_DISPLAYPHYCLK ; 
 int /*<<< orphan*/  DM_PP_CLOCK_TYPE_DISPLAY_CLK ; 
 struct clk_mgr_internal* FUNC0 (struct clk_mgr*) ; 
 int FUNC1 (struct clk_mgr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dc_state*) ; 
 int FUNC3 (struct clk_mgr_internal*,int) ; 
 int FUNC4 (struct dc_state*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,struct dm_pp_clock_for_voltage_req*) ; 
 scalar_t__ FUNC6 (int,int,int) ; 

__attribute__((used)) static void FUNC7(struct clk_mgr *clk_mgr_base,
			struct dc_state *context,
			bool safe_to_lower)
{
	struct clk_mgr_internal *clk_mgr_dce = FUNC0(clk_mgr_base);
	struct dm_pp_clock_for_voltage_req clock_voltage_req = {0};
	int max_pix_clk = FUNC4(context);
	int patched_disp_clk = context->bw_ctx.bw.dce.dispclk_khz;

	/*TODO: W/A for dal3 linux, investigate why this works */
	if (!clk_mgr_dce->dfs_bypass_active)
		patched_disp_clk = patched_disp_clk * 115 / 100;

	if (FUNC6(safe_to_lower, patched_disp_clk, clk_mgr_base->clks.dispclk_khz)) {
		clock_voltage_req.clk_type = DM_PP_CLOCK_TYPE_DISPLAY_CLK;
		/*
		 * When xGMI is enabled, the display clk needs to be adjusted
		 * with the WAFL link's SS percentage.
		 */
		if (clk_mgr_dce->xgmi_enabled)
			patched_disp_clk = FUNC3(
					clk_mgr_dce, patched_disp_clk);
		clock_voltage_req.clocks_in_khz = patched_disp_clk;
		clk_mgr_base->clks.dispclk_khz = FUNC1(clk_mgr_base, patched_disp_clk);

		FUNC5(clk_mgr_base->ctx, &clock_voltage_req);
	}

	if (FUNC6(safe_to_lower, max_pix_clk, clk_mgr_base->clks.phyclk_khz)) {
		clock_voltage_req.clk_type = DM_PP_CLOCK_TYPE_DISPLAYPHYCLK;
		clock_voltage_req.clocks_in_khz = max_pix_clk;
		clk_mgr_base->clks.phyclk_khz = max_pix_clk;

		FUNC5(clk_mgr_base->ctx, &clock_voltage_req);
	}
	FUNC2(clk_mgr_base->ctx->dc, context);
}