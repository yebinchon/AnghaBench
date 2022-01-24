#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct irq_service_init_data {struct dc_context* ctx; } ;
struct TYPE_7__ {unsigned int pipe_count; unsigned int timing_generator_count; int clk_src_count; int /*<<< orphan*/ ** sw_i2cs; int /*<<< orphan*/ ** hw_i2cs; int /*<<< orphan*/ ** engines; TYPE_4__* res_cap; int /*<<< orphan*/ ** opps; int /*<<< orphan*/ ** transforms; int /*<<< orphan*/ ** ipps; int /*<<< orphan*/ ** mis; int /*<<< orphan*/ ** timing_generators; int /*<<< orphan*/  irqs; int /*<<< orphan*/ * abm; int /*<<< orphan*/ * dmcu; int /*<<< orphan*/ ** clock_sources; int /*<<< orphan*/ * dp_clock_source; int /*<<< orphan*/  underlay_pipe_index; int /*<<< orphan*/ * funcs; } ;
struct dce110_resource_pool {TYPE_3__ base; } ;
struct dc_context {struct dc_bios* dc_bios; } ;
struct TYPE_6__ {scalar_t__ external_clock_source_frequency_for_dp; } ;
struct dc_bios {TYPE_2__ fw_info; scalar_t__ fw_info_valid; int /*<<< orphan*/ * regs; } ;
struct TYPE_5__ {int max_downscale_ratio; int i2c_speed_in_khz; int max_cursor_size; int is_apu; unsigned int max_planes; int disable_dp_clk_share; int /*<<< orphan*/ * planes; } ;
struct dc {TYPE_1__ caps; struct dc_context* ctx; } ;
struct TYPE_8__ {unsigned int num_timing_generator; unsigned int num_ddc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CLOCK_SOURCE_ID_EXTERNAL ; 
 int /*<<< orphan*/  CLOCK_SOURCE_ID_PLL1 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_ID_PLL2 ; 
 int /*<<< orphan*/  NO_UNDERLAY_PIPE ; 
 int /*<<< orphan*/  abm_mask ; 
 int /*<<< orphan*/  abm_regs ; 
 int /*<<< orphan*/  abm_shift ; 
 int /*<<< orphan*/  bios_regs ; 
 int /*<<< orphan*/ * clk_src_regs ; 
 int /*<<< orphan*/  FUNC1 (struct irq_service_init_data*) ; 
 int /*<<< orphan*/ * FUNC2 (struct dc_context*,unsigned int) ; 
 void* FUNC3 (struct dc_context*,struct dc_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dc*) ; 
 int /*<<< orphan*/ * FUNC5 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC6 (struct dc_context*) ; 
 int /*<<< orphan*/ * FUNC7 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC8 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC9 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/  dce80_res_pool_funcs ; 
 int /*<<< orphan*/ * dce80_tg_offsets ; 
 int /*<<< orphan*/ * FUNC10 (struct dc_context*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC12 (struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct dce110_resource_pool*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  dmcu_mask ; 
 int /*<<< orphan*/  dmcu_regs ; 
 int /*<<< orphan*/  dmcu_shift ; 
 int /*<<< orphan*/  plane_cap ; 
 TYPE_4__ res_cap_83 ; 
 int /*<<< orphan*/  res_create_funcs ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct dc*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC17(
	uint8_t num_virtual_links,
	struct dc *dc,
	struct dce110_resource_pool *pool)
{
	unsigned int i;
	struct dc_context *ctx = dc->ctx;
	struct dc_bios *bp;

	ctx->dc_bios->regs = &bios_regs;

	pool->base.res_cap = &res_cap_83;
	pool->base.funcs = &dce80_res_pool_funcs;


	/*************************************************
	 *  Resource + asic cap harcoding                *
	 *************************************************/
	pool->base.underlay_pipe_index = NO_UNDERLAY_PIPE;
	pool->base.pipe_count = res_cap_83.num_timing_generator;
	pool->base.timing_generator_count = res_cap_83.num_timing_generator;
	dc->caps.max_downscale_ratio = 200;
	dc->caps.i2c_speed_in_khz = 40;
	dc->caps.max_cursor_size = 128;
	dc->caps.is_apu = true;

	/*************************************************
	 *  Create resources                             *
	 *************************************************/

	bp = ctx->dc_bios;

	if (bp->fw_info_valid && bp->fw_info.external_clock_source_frequency_for_dp != 0) {
		pool->base.dp_clock_source =
				FUNC3(ctx, bp, CLOCK_SOURCE_ID_EXTERNAL, NULL, true);

		pool->base.clock_sources[0] =
				FUNC3(ctx, bp, CLOCK_SOURCE_ID_PLL1, &clk_src_regs[0], false);
		pool->base.clock_sources[1] =
				FUNC3(ctx, bp, CLOCK_SOURCE_ID_PLL2, &clk_src_regs[1], false);
		pool->base.clk_src_count = 2;

	} else {
		pool->base.dp_clock_source =
				FUNC3(ctx, bp, CLOCK_SOURCE_ID_PLL1, &clk_src_regs[0], true);

		pool->base.clock_sources[0] =
				FUNC3(ctx, bp, CLOCK_SOURCE_ID_PLL2, &clk_src_regs[1], false);
		pool->base.clk_src_count = 1;
	}

	if (pool->base.dp_clock_source == NULL) {
		FUNC15("DC: failed to create dp clock source!\n");
		FUNC0();
		goto res_create_fail;
	}

	for (i = 0; i < pool->base.clk_src_count; i++) {
		if (pool->base.clock_sources[i] == NULL) {
			FUNC15("DC: failed to create clock sources!\n");
			FUNC0();
			goto res_create_fail;
		}
	}

	pool->base.dmcu = FUNC13(ctx,
			&dmcu_regs,
			&dmcu_shift,
			&dmcu_mask);
	if (pool->base.dmcu == NULL) {
		FUNC15("DC: failed to create dmcu!\n");
		FUNC0();
		goto res_create_fail;
	}

	pool->base.abm = FUNC12(ctx,
			&abm_regs,
			&abm_shift,
			&abm_mask);
	if (pool->base.abm == NULL) {
		FUNC15("DC: failed to create abm!\n");
		FUNC0();
		goto res_create_fail;
	}

	{
		struct irq_service_init_data init_data;
		init_data.ctx = dc->ctx;
		pool->base.irqs = FUNC1(&init_data);
		if (!pool->base.irqs)
			goto res_create_fail;
	}

	for (i = 0; i < pool->base.pipe_count; i++) {
		pool->base.timing_generators[i] = FUNC10(
				ctx, i, &dce80_tg_offsets[i]);
		if (pool->base.timing_generators[i] == NULL) {
			FUNC0();
			FUNC15("DC: failed to create tg!\n");
			goto res_create_fail;
		}

		pool->base.mis[i] = FUNC8(ctx, i);
		if (pool->base.mis[i] == NULL) {
			FUNC0();
			FUNC15("DC: failed to create memory input!\n");
			goto res_create_fail;
		}

		pool->base.ipps[i] = FUNC7(ctx, i);
		if (pool->base.ipps[i] == NULL) {
			FUNC0();
			FUNC15("DC: failed to create input pixel processor!\n");
			goto res_create_fail;
		}

		pool->base.transforms[i] = FUNC11(ctx, i);
		if (pool->base.transforms[i] == NULL) {
			FUNC0();
			FUNC15("DC: failed to create transform!\n");
			goto res_create_fail;
		}

		pool->base.opps[i] = FUNC9(ctx, i);
		if (pool->base.opps[i] == NULL) {
			FUNC0();
			FUNC15("DC: failed to create output pixel processor!\n");
			goto res_create_fail;
		}
	}

	for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
		pool->base.engines[i] = FUNC2(ctx, i);
		if (pool->base.engines[i] == NULL) {
			FUNC0();
			FUNC15(
				"DC:failed to create aux engine!!\n");
			goto res_create_fail;
		}
		pool->base.hw_i2cs[i] = FUNC5(ctx, i);
		if (pool->base.hw_i2cs[i] == NULL) {
			FUNC0();
			FUNC15(
				"DC:failed to create i2c engine!!\n");
			goto res_create_fail;
		}
		pool->base.sw_i2cs[i] = FUNC6(ctx);
		if (pool->base.sw_i2cs[i] == NULL) {
			FUNC0();
			FUNC15(
				"DC:failed to create sw i2c!!\n");
			goto res_create_fail;
		}
	}

	dc->caps.max_planes =  pool->base.pipe_count;

	for (i = 0; i < dc->caps.max_planes; ++i)
		dc->caps.planes[i] = plane_cap;

	dc->caps.disable_dp_clk_share = true;

	if (!FUNC16(num_virtual_links, dc, &pool->base,
			&res_create_funcs))
		goto res_create_fail;

	/* Create hardware sequencer */
	FUNC4(dc);

	return true;

res_create_fail:
	FUNC14(pool);
	return false;
}