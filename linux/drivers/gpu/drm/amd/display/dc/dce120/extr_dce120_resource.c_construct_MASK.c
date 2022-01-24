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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct resource_create_funcs {int dummy; } ;
struct irq_service_init_data {struct dc_context* ctx; } ;
struct TYPE_7__ {int pipe_count; int timing_generator_count; unsigned int clk_src_count; int /*<<< orphan*/ ** sw_i2cs; int /*<<< orphan*/ ** hw_i2cs; int /*<<< orphan*/ ** engines; TYPE_3__* res_cap; int /*<<< orphan*/ ** opps; int /*<<< orphan*/ ** transforms; int /*<<< orphan*/ ** ipps; int /*<<< orphan*/ ** mis; int /*<<< orphan*/ ** timing_generators; int /*<<< orphan*/  irqs; int /*<<< orphan*/ * abm; int /*<<< orphan*/ * dmcu; int /*<<< orphan*/ ** clock_sources; void* dp_clock_source; int /*<<< orphan*/  underlay_pipe_index; int /*<<< orphan*/ * funcs; } ;
struct dce110_resource_pool {TYPE_2__ base; } ;
struct TYPE_10__ {int /*<<< orphan*/  hw_internal_rev; } ;
struct dc_context {TYPE_5__ asic_id; TYPE_4__* dc_bios; } ;
struct TYPE_6__ {int max_downscale_ratio; int i2c_speed_in_khz; int max_cursor_size; int dual_link_dvi; int psp_setup_panel_mode; int max_planes; int /*<<< orphan*/ * planes; } ;
struct dc {struct dc_context* ctx; int /*<<< orphan*/  bw_vbios; int /*<<< orphan*/  bw_dceip; TYPE_1__ caps; int /*<<< orphan*/  debug; } ;
struct TYPE_9__ {int /*<<< orphan*/ * regs; } ;
struct TYPE_8__ {int num_timing_generator; unsigned int num_ddc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CLOCK_SOURCE_COMBO_PHY_PLL0 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_COMBO_PHY_PLL1 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_COMBO_PHY_PLL2 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_COMBO_PHY_PLL3 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_COMBO_PHY_PLL4 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_COMBO_PHY_PLL5 ; 
 int /*<<< orphan*/  CLOCK_SOURCE_ID_DP_DTO ; 
 size_t DCE120_CLK_SRC_PLL0 ; 
 size_t DCE120_CLK_SRC_PLL1 ; 
 size_t DCE120_CLK_SRC_PLL2 ; 
 size_t DCE120_CLK_SRC_PLL3 ; 
 size_t DCE120_CLK_SRC_PLL4 ; 
 size_t DCE120_CLK_SRC_PLL5 ; 
 unsigned int DCE120_CLK_SRC_TOTAL ; 
 int /*<<< orphan*/  NO_UNDERLAY_PIPE ; 
 int /*<<< orphan*/  abm_mask ; 
 int /*<<< orphan*/  abm_regs ; 
 int /*<<< orphan*/  abm_shift ; 
 int /*<<< orphan*/  bios_regs ; 
 int /*<<< orphan*/  FUNC2 (struct dc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__) ; 
 int /*<<< orphan*/ * clk_src_regs ; 
 int /*<<< orphan*/  FUNC4 (struct irq_service_init_data*) ; 
 int /*<<< orphan*/ * FUNC5 (struct dc_context*,unsigned int) ; 
 void* FUNC6 (struct dc_context*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dc*) ; 
 int /*<<< orphan*/ * FUNC8 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC9 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC10 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC11 (struct dc_context*,unsigned int) ; 
 int /*<<< orphan*/  dce120_res_pool_funcs ; 
 int /*<<< orphan*/ * dce120_tg_offsets ; 
 int /*<<< orphan*/ * FUNC12 (struct dc_context*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct dc_context*,unsigned int) ; 
 struct resource_create_funcs dce121_res_create_funcs ; 
 int /*<<< orphan*/ * FUNC14 (struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug_defaults ; 
 int /*<<< orphan*/  FUNC16 (struct dce110_resource_pool*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  dmcu_mask ; 
 int /*<<< orphan*/  dmcu_regs ; 
 int /*<<< orphan*/  dmcu_shift ; 
 int /*<<< orphan*/  plane_cap ; 
 int FUNC18 (struct dc_context*) ; 
 TYPE_3__ res_cap ; 
 struct resource_create_funcs res_create_funcs ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct dc*,TYPE_2__*,struct resource_create_funcs const*) ; 

__attribute__((used)) static bool FUNC20(
	uint8_t num_virtual_links,
	struct dc *dc,
	struct dce110_resource_pool *pool)
{
	unsigned int i;
	int j;
	struct dc_context *ctx = dc->ctx;
	struct irq_service_init_data irq_init_data;
	static const struct resource_create_funcs *res_funcs;
	bool is_vg20 = FUNC0(ctx->asic_id.hw_internal_rev);
	uint32_t pipe_fuses;

	ctx->dc_bios->regs = &bios_regs;

	pool->base.res_cap = &res_cap;
	pool->base.funcs = &dce120_res_pool_funcs;

	/* TODO: Fill more data from GreenlandAsicCapability.cpp */
	pool->base.pipe_count = res_cap.num_timing_generator;
	pool->base.timing_generator_count = pool->base.res_cap->num_timing_generator;
	pool->base.underlay_pipe_index = NO_UNDERLAY_PIPE;

	dc->caps.max_downscale_ratio = 200;
	dc->caps.i2c_speed_in_khz = 100;
	dc->caps.max_cursor_size = 128;
	dc->caps.dual_link_dvi = true;
	dc->caps.psp_setup_panel_mode = true;

	dc->debug = debug_defaults;

	/*************************************************
	 *  Create resources                             *
	 *************************************************/

	pool->base.clock_sources[DCE120_CLK_SRC_PLL0] =
			FUNC6(ctx, ctx->dc_bios,
				CLOCK_SOURCE_COMBO_PHY_PLL0,
				&clk_src_regs[0], false);
	pool->base.clock_sources[DCE120_CLK_SRC_PLL1] =
			FUNC6(ctx, ctx->dc_bios,
				CLOCK_SOURCE_COMBO_PHY_PLL1,
				&clk_src_regs[1], false);
	pool->base.clock_sources[DCE120_CLK_SRC_PLL2] =
			FUNC6(ctx, ctx->dc_bios,
				CLOCK_SOURCE_COMBO_PHY_PLL2,
				&clk_src_regs[2], false);
	pool->base.clock_sources[DCE120_CLK_SRC_PLL3] =
			FUNC6(ctx, ctx->dc_bios,
				CLOCK_SOURCE_COMBO_PHY_PLL3,
				&clk_src_regs[3], false);
	pool->base.clock_sources[DCE120_CLK_SRC_PLL4] =
			FUNC6(ctx, ctx->dc_bios,
				CLOCK_SOURCE_COMBO_PHY_PLL4,
				&clk_src_regs[4], false);
	pool->base.clock_sources[DCE120_CLK_SRC_PLL5] =
			FUNC6(ctx, ctx->dc_bios,
				CLOCK_SOURCE_COMBO_PHY_PLL5,
				&clk_src_regs[5], false);
	pool->base.clk_src_count = DCE120_CLK_SRC_TOTAL;

	pool->base.dp_clock_source =
			FUNC6(ctx, ctx->dc_bios,
				CLOCK_SOURCE_ID_DP_DTO,
				&clk_src_regs[0], true);

	for (i = 0; i < pool->base.clk_src_count; i++) {
		if (pool->base.clock_sources[i] == NULL) {
			FUNC17("DC: failed to create clock sources!\n");
			FUNC1();
			goto clk_src_create_fail;
		}
	}

	pool->base.dmcu = FUNC15(ctx,
			&dmcu_regs,
			&dmcu_shift,
			&dmcu_mask);
	if (pool->base.dmcu == NULL) {
		FUNC17("DC: failed to create dmcu!\n");
		FUNC1();
		goto res_create_fail;
	}

	pool->base.abm = FUNC14(ctx,
			&abm_regs,
			&abm_shift,
			&abm_mask);
	if (pool->base.abm == NULL) {
		FUNC17("DC: failed to create abm!\n");
		FUNC1();
		goto res_create_fail;
	}


	irq_init_data.ctx = dc->ctx;
	pool->base.irqs = FUNC4(&irq_init_data);
	if (!pool->base.irqs)
		goto irqs_create_fail;

	/* VG20: Pipe harvesting enabled, retrieve valid pipe fuses */
	if (is_vg20)
		pipe_fuses = FUNC18(ctx);

	/* index to valid pipe resource */
	j = 0;
	for (i = 0; i < pool->base.pipe_count; i++) {
		if (is_vg20) {
			if ((pipe_fuses & (1 << i)) != 0) {
				FUNC17("DC: skip invalid pipe %d!\n", i);
				continue;
			}
		}

		pool->base.timing_generators[j] =
				FUNC12(
					ctx,
					i,
					&dce120_tg_offsets[i]);
		if (pool->base.timing_generators[j] == NULL) {
			FUNC1();
			FUNC17("DC: failed to create tg!\n");
			goto controller_create_fail;
		}

		pool->base.mis[j] = FUNC10(ctx, i);

		if (pool->base.mis[j] == NULL) {
			FUNC1();
			FUNC17(
				"DC: failed to create memory input!\n");
			goto controller_create_fail;
		}

		pool->base.ipps[j] = FUNC9(ctx, i);
		if (pool->base.ipps[i] == NULL) {
			FUNC1();
			FUNC17(
				"DC: failed to create input pixel processor!\n");
			goto controller_create_fail;
		}

		pool->base.transforms[j] = FUNC13(ctx, i);
		if (pool->base.transforms[i] == NULL) {
			FUNC1();
			FUNC17(
				"DC: failed to create transform!\n");
			goto res_create_fail;
		}

		pool->base.opps[j] = FUNC11(
			ctx,
			i);
		if (pool->base.opps[j] == NULL) {
			FUNC1();
			FUNC17(
				"DC: failed to create output pixel processor!\n");
		}

		/* check next valid pipe */
		j++;
	}

	for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
		pool->base.engines[i] = FUNC5(ctx, i);
		if (pool->base.engines[i] == NULL) {
			FUNC1();
			FUNC17(
				"DC:failed to create aux engine!!\n");
			goto res_create_fail;
		}
		pool->base.hw_i2cs[i] = FUNC8(ctx, i);
		if (pool->base.hw_i2cs[i] == NULL) {
			FUNC1();
			FUNC17(
				"DC:failed to create i2c engine!!\n");
			goto res_create_fail;
		}
		pool->base.sw_i2cs[i] = NULL;
	}

	/* valid pipe num */
	pool->base.pipe_count = j;
	pool->base.timing_generator_count = j;

	if (is_vg20)
		res_funcs = &dce121_res_create_funcs;
	else
		res_funcs = &res_create_funcs;

	if (!FUNC19(num_virtual_links, dc, &pool->base, res_funcs))
		goto res_create_fail;

	/* Create hardware sequencer */
	if (!FUNC7(dc))
		goto controller_create_fail;

	dc->caps.max_planes =  pool->base.pipe_count;

	for (i = 0; i < dc->caps.max_planes; ++i)
		dc->caps.planes[i] = plane_cap;

	FUNC3(dc->bw_dceip, dc->bw_vbios, dc->ctx->asic_id);

	FUNC2(dc);

	return true;

irqs_create_fail:
controller_create_fail:
clk_src_create_fail:
res_create_fail:

	FUNC16(pool);

	return false;
}