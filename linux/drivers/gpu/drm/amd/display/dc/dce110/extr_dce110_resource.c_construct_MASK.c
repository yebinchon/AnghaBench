#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct irq_service_init_data {struct dc_context* ctx; } ;
struct hw_asic_id {int dummy; } ;
struct TYPE_10__ {unsigned int pipe_count; unsigned int underlay_pipe_index; unsigned int timing_generator_count; int clk_src_count; int /*<<< orphan*/ ** sw_i2cs; int /*<<< orphan*/ ** hw_i2cs; int /*<<< orphan*/ ** engines; TYPE_6__* res_cap; int /*<<< orphan*/ ** opps; int /*<<< orphan*/ ** transforms; int /*<<< orphan*/ ** ipps; int /*<<< orphan*/ ** mis; int /*<<< orphan*/ ** timing_generators; int /*<<< orphan*/  irqs; int /*<<< orphan*/ * abm; int /*<<< orphan*/ * dmcu; int /*<<< orphan*/ ** clock_sources; int /*<<< orphan*/ * dp_clock_source; int /*<<< orphan*/ * funcs; } ;
struct dce110_resource_pool {TYPE_4__ base; } ;
struct dc_context {int /*<<< orphan*/  asic_id; struct dc_bios* dc_bios; } ;
struct TYPE_9__ {scalar_t__ external_clock_source_frequency_for_dp; } ;
struct dc_bios {TYPE_3__ fw_info; scalar_t__ fw_info_valid; int /*<<< orphan*/ * regs; } ;
struct TYPE_8__ {int max_downscale_ratio; int i2c_speed_in_khz; int max_cursor_size; int is_apu; unsigned int max_planes; int /*<<< orphan*/ * planes; } ;
struct TYPE_7__ {scalar_t__ fbc_support; } ;
struct dc {struct dc_context* ctx; int /*<<< orphan*/  bw_vbios; int /*<<< orphan*/  bw_dceip; TYPE_2__ caps; int /*<<< orphan*/  fbc_compressor; TYPE_1__ config; } ;
struct TYPE_11__ {unsigned int num_timing_generator; unsigned int num_ddc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CLOCK_SOURCE_ID_EXTERNAL ; 
 int /*<<< orphan*/  CLOCK_SOURCE_ID_PLL0 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_ID_PLL1 ; 
 int /*<<< orphan*/  abm_mask ; 
 int /*<<< orphan*/  abm_regs ; 
 int /*<<< orphan*/  abm_shift ; 
 int /*<<< orphan*/  bios_regs ; 
 int /*<<< orphan*/  FUNC1 (struct dc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * clk_src_regs ; 
 int /*<<< orphan*/  FUNC3 (struct irq_service_init_data*) ; 
 int /*<<< orphan*/ * FUNC4 (struct dc_context*,unsigned int) ; 
 void* FUNC5 (struct dc_context*,struct dc_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct dc*) ; 
 int /*<<< orphan*/ * FUNC8 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC9 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC10 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC11 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/  dce110_res_pool_funcs ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dce110_tg_offsets ; 
 int /*<<< orphan*/ * FUNC13 (struct dc_context*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC15 (struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dce110_resource_pool*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  dmcu_mask ; 
 int /*<<< orphan*/  dmcu_regs ; 
 int /*<<< orphan*/  dmcu_shift ; 
 int /*<<< orphan*/  plane_cap ; 
 int /*<<< orphan*/  res_create_funcs ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct dc*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct dc_context*,TYPE_4__*) ; 
 int /*<<< orphan*/  underlay_plane_cap ; 

__attribute__((used)) static bool FUNC21(
	uint8_t num_virtual_links,
	struct dc *dc,
	struct dce110_resource_pool *pool,
	struct hw_asic_id asic_id)
{
	unsigned int i;
	struct dc_context *ctx = dc->ctx;
	struct dc_bios *bp;

	ctx->dc_bios->regs = &bios_regs;

	pool->base.res_cap = FUNC12(&ctx->asic_id);
	pool->base.funcs = &dce110_res_pool_funcs;

	/*************************************************
	 *  Resource + asic cap harcoding                *
	 *************************************************/

	pool->base.pipe_count = pool->base.res_cap->num_timing_generator;
	pool->base.underlay_pipe_index = pool->base.pipe_count;
	pool->base.timing_generator_count = pool->base.res_cap->num_timing_generator;
	dc->caps.max_downscale_ratio = 150;
	dc->caps.i2c_speed_in_khz = 100;
	dc->caps.max_cursor_size = 128;
	dc->caps.is_apu = true;

	/*************************************************
	 *  Create resources                             *
	 *************************************************/

	bp = ctx->dc_bios;

	if (bp->fw_info_valid && bp->fw_info.external_clock_source_frequency_for_dp != 0) {
		pool->base.dp_clock_source =
				FUNC5(ctx, bp, CLOCK_SOURCE_ID_EXTERNAL, NULL, true);

		pool->base.clock_sources[0] =
				FUNC5(ctx, bp, CLOCK_SOURCE_ID_PLL0,
						&clk_src_regs[0], false);
		pool->base.clock_sources[1] =
				FUNC5(ctx, bp, CLOCK_SOURCE_ID_PLL1,
						&clk_src_regs[1], false);

		pool->base.clk_src_count = 2;

		/* TODO: find out if CZ support 3 PLLs */
	}

	if (pool->base.dp_clock_source == NULL) {
		FUNC18("DC: failed to create dp clock source!\n");
		FUNC0();
		goto res_create_fail;
	}

	for (i = 0; i < pool->base.clk_src_count; i++) {
		if (pool->base.clock_sources[i] == NULL) {
			FUNC18("DC: failed to create clock sources!\n");
			FUNC0();
			goto res_create_fail;
		}
	}

	pool->base.dmcu = FUNC16(ctx,
			&dmcu_regs,
			&dmcu_shift,
			&dmcu_mask);
	if (pool->base.dmcu == NULL) {
		FUNC18("DC: failed to create dmcu!\n");
		FUNC0();
		goto res_create_fail;
	}

	pool->base.abm = FUNC15(ctx,
			&abm_regs,
			&abm_shift,
			&abm_mask);
	if (pool->base.abm == NULL) {
		FUNC18("DC: failed to create abm!\n");
		FUNC0();
		goto res_create_fail;
	}

	{
		struct irq_service_init_data init_data;
		init_data.ctx = dc->ctx;
		pool->base.irqs = FUNC3(&init_data);
		if (!pool->base.irqs)
			goto res_create_fail;
	}

	for (i = 0; i < pool->base.pipe_count; i++) {
		pool->base.timing_generators[i] = FUNC13(
				ctx, i, &dce110_tg_offsets[i]);
		if (pool->base.timing_generators[i] == NULL) {
			FUNC0();
			FUNC18("DC: failed to create tg!\n");
			goto res_create_fail;
		}

		pool->base.mis[i] = FUNC10(ctx, i);
		if (pool->base.mis[i] == NULL) {
			FUNC0();
			FUNC18(
				"DC: failed to create memory input!\n");
			goto res_create_fail;
		}

		pool->base.ipps[i] = FUNC9(ctx, i);
		if (pool->base.ipps[i] == NULL) {
			FUNC0();
			FUNC18(
				"DC: failed to create input pixel processor!\n");
			goto res_create_fail;
		}

		pool->base.transforms[i] = FUNC14(ctx, i);
		if (pool->base.transforms[i] == NULL) {
			FUNC0();
			FUNC18(
				"DC: failed to create transform!\n");
			goto res_create_fail;
		}

		pool->base.opps[i] = FUNC11(ctx, i);
		if (pool->base.opps[i] == NULL) {
			FUNC0();
			FUNC18(
				"DC: failed to create output pixel processor!\n");
			goto res_create_fail;
		}
	}

	for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
		pool->base.engines[i] = FUNC4(ctx, i);
		if (pool->base.engines[i] == NULL) {
			FUNC0();
			FUNC18(
				"DC:failed to create aux engine!!\n");
			goto res_create_fail;
		}
		pool->base.hw_i2cs[i] = FUNC8(ctx, i);
		if (pool->base.hw_i2cs[i] == NULL) {
			FUNC0();
			FUNC18(
				"DC:failed to create i2c engine!!\n");
			goto res_create_fail;
		}
		pool->base.sw_i2cs[i] = NULL;
	}

	if (dc->config.fbc_support)
		dc->fbc_compressor = FUNC6(ctx);

	if (!FUNC20(ctx, &pool->base))
		goto res_create_fail;

	if (!FUNC19(num_virtual_links, dc, &pool->base,
			&res_create_funcs))
		goto res_create_fail;

	/* Create hardware sequencer */
	FUNC7(dc);

	dc->caps.max_planes =  pool->base.pipe_count;

	for (i = 0; i < pool->base.underlay_pipe_index; ++i)
		dc->caps.planes[i] = plane_cap;

	dc->caps.planes[pool->base.underlay_pipe_index] = underlay_plane_cap;

	FUNC2(dc->bw_dceip, dc->bw_vbios, dc->ctx->asic_id);

	FUNC1(dc);

	return true;

res_create_fail:
	FUNC17(pool);
	return false;
}