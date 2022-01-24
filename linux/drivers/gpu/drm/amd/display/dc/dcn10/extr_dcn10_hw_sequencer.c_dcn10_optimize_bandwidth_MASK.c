#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct hubbub {TYPE_4__* funcs; } ;
struct TYPE_15__ {scalar_t__ phyclk_khz; } ;
struct TYPE_18__ {int /*<<< orphan*/  watermarks; TYPE_2__ clk; } ;
struct TYPE_19__ {TYPE_5__ dcn; } ;
struct TYPE_20__ {TYPE_6__ bw; } ;
struct dc_state {scalar_t__ stream_count; TYPE_7__ bw_ctx; } ;
struct TYPE_12__ {scalar_t__ pplib_wm_report_mode; scalar_t__ sanity_checks; } ;
struct dc {TYPE_10__ debug; TYPE_9__* res_pool; TYPE_11__* clk_mgr; TYPE_1__* ctx; } ;
struct TYPE_21__ {int dchub_ref_clock_inKhz; } ;
struct TYPE_22__ {TYPE_8__ ref_clocks; struct hubbub* hubbub; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* program_watermarks ) (struct hubbub*,int /*<<< orphan*/ *,int,int) ;} ;
struct TYPE_16__ {int /*<<< orphan*/  (* update_clocks ) (TYPE_11__*,struct dc_state*,int) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  dce_environment; } ;
struct TYPE_13__ {TYPE_3__* funcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WM_REPORT_OVERRIDE ; 
 int /*<<< orphan*/  FUNC1 (struct dc*,struct dc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,struct dc_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hubbub*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6(
		struct dc *dc,
		struct dc_state *context)
{
	struct hubbub *hubbub = dc->res_pool->hubbub;

	if (dc->debug.sanity_checks)
		FUNC2(dc);

	if (!FUNC0(dc->ctx->dce_environment)) {
		if (context->stream_count == 0)
			context->bw_ctx.bw.dcn.clk.phyclk_khz = 0;

		dc->clk_mgr->funcs->update_clocks(
				dc->clk_mgr,
				context,
				true);
	}

	hubbub->funcs->program_watermarks(hubbub,
			&context->bw_ctx.bw.dcn.watermarks,
			dc->res_pool->ref_clocks.dchub_ref_clock_inKhz / 1000,
			true);
	FUNC1(dc, context);

	if (dc->debug.pplib_wm_report_mode == WM_REPORT_OVERRIDE)
		FUNC3(dc);

	if (dc->debug.sanity_checks)
		FUNC2(dc);
}