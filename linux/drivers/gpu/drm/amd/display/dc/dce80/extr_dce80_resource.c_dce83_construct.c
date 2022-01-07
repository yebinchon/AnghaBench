
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct irq_service_init_data {struct dc_context* ctx; } ;
struct TYPE_7__ {unsigned int pipe_count; unsigned int timing_generator_count; int clk_src_count; int ** sw_i2cs; int ** hw_i2cs; int ** engines; TYPE_4__* res_cap; int ** opps; int ** transforms; int ** ipps; int ** mis; int ** timing_generators; int irqs; int * abm; int * dmcu; int ** clock_sources; int * dp_clock_source; int underlay_pipe_index; int * funcs; } ;
struct dce110_resource_pool {TYPE_3__ base; } ;
struct dc_context {struct dc_bios* dc_bios; } ;
struct TYPE_6__ {scalar_t__ external_clock_source_frequency_for_dp; } ;
struct dc_bios {TYPE_2__ fw_info; scalar_t__ fw_info_valid; int * regs; } ;
struct TYPE_5__ {int max_downscale_ratio; int i2c_speed_in_khz; int max_cursor_size; int is_apu; unsigned int max_planes; int disable_dp_clk_share; int * planes; } ;
struct dc {TYPE_1__ caps; struct dc_context* ctx; } ;
struct TYPE_8__ {unsigned int num_timing_generator; unsigned int num_ddc; } ;


 int BREAK_TO_DEBUGGER () ;
 int CLOCK_SOURCE_ID_EXTERNAL ;
 int CLOCK_SOURCE_ID_PLL1 ;
 int CLOCK_SOURCE_ID_PLL2 ;
 int NO_UNDERLAY_PIPE ;
 int abm_mask ;
 int abm_regs ;
 int abm_shift ;
 int bios_regs ;
 int * clk_src_regs ;
 int dal_irq_service_dce80_create (struct irq_service_init_data*) ;
 int * dce80_aux_engine_create (struct dc_context*,unsigned int) ;
 void* dce80_clock_source_create (struct dc_context*,struct dc_bios*,int ,int *,int) ;
 int dce80_hw_sequencer_construct (struct dc*) ;
 int * dce80_i2c_hw_create (struct dc_context*,unsigned int) ;
 int * dce80_i2c_sw_create (struct dc_context*) ;
 int * dce80_ipp_create (struct dc_context*,unsigned int) ;
 int * dce80_mem_input_create (struct dc_context*,unsigned int) ;
 int * dce80_opp_create (struct dc_context*,unsigned int) ;
 int dce80_res_pool_funcs ;
 int * dce80_tg_offsets ;
 int * dce80_timing_generator_create (struct dc_context*,unsigned int,int *) ;
 int * dce80_transform_create (struct dc_context*,unsigned int) ;
 int * dce_abm_create (struct dc_context*,int *,int *,int *) ;
 int * dce_dmcu_create (struct dc_context*,int *,int *,int *) ;
 int destruct (struct dce110_resource_pool*) ;
 int dm_error (char*) ;
 int dmcu_mask ;
 int dmcu_regs ;
 int dmcu_shift ;
 int plane_cap ;
 TYPE_4__ res_cap_83 ;
 int res_create_funcs ;
 int resource_construct (int ,struct dc*,TYPE_3__*,int *) ;

__attribute__((used)) static bool dce83_construct(
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





 pool->base.underlay_pipe_index = NO_UNDERLAY_PIPE;
 pool->base.pipe_count = res_cap_83.num_timing_generator;
 pool->base.timing_generator_count = res_cap_83.num_timing_generator;
 dc->caps.max_downscale_ratio = 200;
 dc->caps.i2c_speed_in_khz = 40;
 dc->caps.max_cursor_size = 128;
 dc->caps.is_apu = 1;





 bp = ctx->dc_bios;

 if (bp->fw_info_valid && bp->fw_info.external_clock_source_frequency_for_dp != 0) {
  pool->base.dp_clock_source =
    dce80_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_EXTERNAL, ((void*)0), 1);

  pool->base.clock_sources[0] =
    dce80_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_PLL1, &clk_src_regs[0], 0);
  pool->base.clock_sources[1] =
    dce80_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_PLL2, &clk_src_regs[1], 0);
  pool->base.clk_src_count = 2;

 } else {
  pool->base.dp_clock_source =
    dce80_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_PLL1, &clk_src_regs[0], 1);

  pool->base.clock_sources[0] =
    dce80_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_PLL2, &clk_src_regs[1], 0);
  pool->base.clk_src_count = 1;
 }

 if (pool->base.dp_clock_source == ((void*)0)) {
  dm_error("DC: failed to create dp clock source!\n");
  BREAK_TO_DEBUGGER();
  goto res_create_fail;
 }

 for (i = 0; i < pool->base.clk_src_count; i++) {
  if (pool->base.clock_sources[i] == ((void*)0)) {
   dm_error("DC: failed to create clock sources!\n");
   BREAK_TO_DEBUGGER();
   goto res_create_fail;
  }
 }

 pool->base.dmcu = dce_dmcu_create(ctx,
   &dmcu_regs,
   &dmcu_shift,
   &dmcu_mask);
 if (pool->base.dmcu == ((void*)0)) {
  dm_error("DC: failed to create dmcu!\n");
  BREAK_TO_DEBUGGER();
  goto res_create_fail;
 }

 pool->base.abm = dce_abm_create(ctx,
   &abm_regs,
   &abm_shift,
   &abm_mask);
 if (pool->base.abm == ((void*)0)) {
  dm_error("DC: failed to create abm!\n");
  BREAK_TO_DEBUGGER();
  goto res_create_fail;
 }

 {
  struct irq_service_init_data init_data;
  init_data.ctx = dc->ctx;
  pool->base.irqs = dal_irq_service_dce80_create(&init_data);
  if (!pool->base.irqs)
   goto res_create_fail;
 }

 for (i = 0; i < pool->base.pipe_count; i++) {
  pool->base.timing_generators[i] = dce80_timing_generator_create(
    ctx, i, &dce80_tg_offsets[i]);
  if (pool->base.timing_generators[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create tg!\n");
   goto res_create_fail;
  }

  pool->base.mis[i] = dce80_mem_input_create(ctx, i);
  if (pool->base.mis[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create memory input!\n");
   goto res_create_fail;
  }

  pool->base.ipps[i] = dce80_ipp_create(ctx, i);
  if (pool->base.ipps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create input pixel processor!\n");
   goto res_create_fail;
  }

  pool->base.transforms[i] = dce80_transform_create(ctx, i);
  if (pool->base.transforms[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create transform!\n");
   goto res_create_fail;
  }

  pool->base.opps[i] = dce80_opp_create(ctx, i);
  if (pool->base.opps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create output pixel processor!\n");
   goto res_create_fail;
  }
 }

 for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
  pool->base.engines[i] = dce80_aux_engine_create(ctx, i);
  if (pool->base.engines[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create aux engine!!\n");
   goto res_create_fail;
  }
  pool->base.hw_i2cs[i] = dce80_i2c_hw_create(ctx, i);
  if (pool->base.hw_i2cs[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create i2c engine!!\n");
   goto res_create_fail;
  }
  pool->base.sw_i2cs[i] = dce80_i2c_sw_create(ctx);
  if (pool->base.sw_i2cs[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create sw i2c!!\n");
   goto res_create_fail;
  }
 }

 dc->caps.max_planes = pool->base.pipe_count;

 for (i = 0; i < dc->caps.max_planes; ++i)
  dc->caps.planes[i] = plane_cap;

 dc->caps.disable_dp_clk_share = 1;

 if (!resource_construct(num_virtual_links, dc, &pool->base,
   &res_create_funcs))
  goto res_create_fail;


 dce80_hw_sequencer_construct(dc);

 return 1;

res_create_fail:
 destruct(pool);
 return 0;
}
