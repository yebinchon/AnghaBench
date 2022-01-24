#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct dmcu {TYPE_8__* funcs; } ;
struct dc_clocks {scalar_t__ phyclk_khz; scalar_t__ dcfclk_khz; scalar_t__ dcfclk_deep_sleep_khz; scalar_t__ dppclk_khz; scalar_t__ dispclk_khz; } ;
struct TYPE_10__ {struct dc_clocks clk; } ;
struct TYPE_11__ {TYPE_1__ dcn; } ;
struct TYPE_12__ {TYPE_2__ bw; } ;
struct dc_state {TYPE_3__ bw_ctx; } ;
struct dc {TYPE_4__* res_pool; } ;
struct TYPE_15__ {scalar_t__ dppclk_khz; } ;
struct TYPE_16__ {TYPE_6__ clks; } ;
struct clk_mgr_internal {TYPE_7__ base; } ;
struct TYPE_18__ {scalar_t__ phyclk_khz; scalar_t__ dcfclk_khz; scalar_t__ dcfclk_deep_sleep_khz; scalar_t__ dppclk_khz; scalar_t__ dispclk_khz; } ;
struct clk_mgr {TYPE_9__ clks; TYPE_5__* ctx; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* set_psr_wait_loop ) (struct dmcu*,int) ;scalar_t__ (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_14__ {struct dc* dc; } ;
struct TYPE_13__ {struct dmcu* dmcu; } ;

/* Variables and functions */
 struct clk_mgr_internal* FUNC0 (struct clk_mgr*) ; 
 int FUNC1 (struct dc*,struct dc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_mgr_internal*,struct dc_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_mgr_internal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_mgr_internal*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_mgr_internal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_mgr_internal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct clk_mgr_internal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct clk_mgr_internal*,scalar_t__) ; 
 scalar_t__ FUNC9 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct dmcu*) ; 
 int /*<<< orphan*/  FUNC11 (struct dmcu*,int) ; 

void FUNC12(struct clk_mgr *clk_mgr_base,
			struct dc_state *context,
			bool safe_to_lower)
{
	struct clk_mgr_internal *clk_mgr = FUNC0(clk_mgr_base);
	struct dc_clocks *new_clocks = &context->bw_ctx.bw.dcn.clk;
	struct dc *dc = clk_mgr_base->ctx->dc;
	int display_count;
	bool update_dppclk = false;
	bool update_dispclk = false;
	bool enter_display_off = false;
	bool dpp_clock_lowered = false;
	struct dmcu *dmcu = clk_mgr_base->ctx->dc->res_pool->dmcu;

	display_count = FUNC1(dc, context);

	if (display_count == 0)
		enter_display_off = true;

	if (enter_display_off == safe_to_lower) {
		FUNC4(clk_mgr, display_count);
	}

	if (FUNC9(safe_to_lower, new_clocks->phyclk_khz, clk_mgr_base->clks.phyclk_khz)) {
		clk_mgr_base->clks.phyclk_khz = new_clocks->phyclk_khz;
		FUNC8(clk_mgr, clk_mgr_base->clks.phyclk_khz);
	}

	if (FUNC9(safe_to_lower, new_clocks->dcfclk_khz, clk_mgr_base->clks.dcfclk_khz)) {
		clk_mgr_base->clks.dcfclk_khz = new_clocks->dcfclk_khz;
		FUNC6(clk_mgr, clk_mgr_base->clks.dcfclk_khz);
	}

	if (FUNC9(safe_to_lower,
			new_clocks->dcfclk_deep_sleep_khz, clk_mgr_base->clks.dcfclk_deep_sleep_khz)) {
		clk_mgr_base->clks.dcfclk_deep_sleep_khz = new_clocks->dcfclk_deep_sleep_khz;
		FUNC7(clk_mgr, clk_mgr_base->clks.dcfclk_deep_sleep_khz);
	}

	if (FUNC9(safe_to_lower, new_clocks->dppclk_khz, clk_mgr->base.clks.dppclk_khz)) {
		if (clk_mgr->base.clks.dppclk_khz > new_clocks->dppclk_khz)
			dpp_clock_lowered = true;
		clk_mgr_base->clks.dppclk_khz = new_clocks->dppclk_khz;
		update_dppclk = true;
	}

	if (FUNC9(safe_to_lower, new_clocks->dispclk_khz, clk_mgr_base->clks.dispclk_khz)) {
		clk_mgr_base->clks.dispclk_khz = new_clocks->dispclk_khz;
		FUNC3(clk_mgr, clk_mgr_base->clks.dispclk_khz);

		update_dispclk = true;
	}

	if (dpp_clock_lowered) {
		// if clock is being lowered, increase DTO before lowering refclk
		FUNC2(clk_mgr, context);
		FUNC5(clk_mgr, clk_mgr_base->clks.dppclk_khz);
	} else {
		// if clock is being raised, increase refclk before lowering DTO
		if (update_dppclk || update_dispclk)
			FUNC5(clk_mgr, clk_mgr_base->clks.dppclk_khz);
		if (update_dppclk)
			FUNC2(clk_mgr, context);
	}

	if (update_dispclk &&
			dmcu && dmcu->funcs->is_dmcu_initialized(dmcu)) {
		/*update dmcu for wait_loop count*/
		dmcu->funcs->set_psr_wait_loop(dmcu,
			clk_mgr_base->clks.dispclk_khz / 1000 / 7);
	}
}