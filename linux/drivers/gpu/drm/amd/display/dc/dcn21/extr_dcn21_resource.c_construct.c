
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct irq_service_init_data {struct dc_context* ctx; } ;
struct TYPE_9__ {int pipe_count; int clk_src_count; int timing_generator_count; int ** dscs; TYPE_3__* res_cap; int * hubbub; int * mpc; int ** timing_generators; int ** opps; int ** sw_i2cs; int ** hw_i2cs; int ** engines; int ** dpps; int ** ipps; int ** hubps; int irqs; int pp_smu; int * dmcub; int * dccg; int ** clock_sources; void* dp_clock_source; int underlay_pipe_index; int * funcs; } ;
struct dcn21_resource_pool {TYPE_2__ base; } ;
struct dc_context {scalar_t__ dce_environment; TYPE_5__* dc_bios; } ;
struct TYPE_8__ {int max_downscale_ratio; int i2c_speed_in_khz; int max_cursor_size; int dmdata_alloc_size; int hw_3d_lut; int max_slave_planes; int post_blend_color_processing; int force_dp_tps4_for_cp2520; int max_planes; int * planes; } ;
struct dc {int cap_funcs; TYPE_1__ caps; struct dc_context* ctx; int dml; scalar_t__ vm_helper; void* debug; } ;
struct TYPE_11__ {int * regs; } ;
struct TYPE_10__ {int num_ddc; int num_opp; int num_timing_generator; int num_dsc; } ;


 int BREAK_TO_DEBUGGER () ;
 int CLOCK_SOURCE_COMBO_PHY_PLL0 ;
 int CLOCK_SOURCE_COMBO_PHY_PLL1 ;
 int CLOCK_SOURCE_ID_DP_DTO ;
 scalar_t__ DCE_ENV_FPGA_MAXIMUS ;
 scalar_t__ DCE_ENV_PRODUCTION_DRV ;
 size_t DCN20_CLK_SRC_PLL0 ;
 size_t DCN20_CLK_SRC_PLL1 ;
 int DCN20_CLK_SRC_TOTAL_DCN21 ;
 int DML_PROJECT_DCN21 ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (scalar_t__) ;
 int NO_UNDERLAY_PIPE ;
 int bios_regs ;
 int cap_funcs ;
 int * clk_src_regs ;
 int dal_irq_service_dcn21_create (struct irq_service_init_data*) ;
 int * dccg2_create (struct dc_context*,int *,int *,int *) ;
 int dccg_mask ;
 int dccg_regs ;
 int dccg_shift ;
 int dcn20_dwbc_create (struct dc_context*,TYPE_2__*) ;
 int dcn20_hw_sequencer_construct (struct dc*) ;
 int dcn20_mmhubbub_create (struct dc_context*,TYPE_2__*) ;
 int * dcn21_aux_engine_create (struct dc_context*,int) ;
 void* dcn21_clock_source_create (struct dc_context*,TYPE_5__*,int ,int *,int) ;
 int * dcn21_dmcub_create (struct dc_context*,int *,int *,int *) ;
 int * dcn21_dpp_create (struct dc_context*,int) ;
 int * dcn21_dsc_create (struct dc_context*,int) ;
 int * dcn21_hubbub_create (struct dc_context*) ;
 int * dcn21_hubp_create (struct dc_context*,int) ;
 int * dcn21_i2c_hw_create (struct dc_context*,int) ;
 int * dcn21_ipp_create (struct dc_context*,int) ;
 int * dcn21_mpc_create (struct dc_context*) ;
 int * dcn21_opp_create (struct dc_context*,int) ;
 int dcn21_pp_smu_create (struct dc_context*) ;
 int dcn21_res_pool_funcs ;
 int * dcn21_timing_generator_create (struct dc_context*,int) ;
 int dcn2_1_ip ;
 int dcn2_1_soc ;
 void* debug_defaults_diags ;
 void* debug_defaults_drv ;
 int destruct (struct dcn21_resource_pool*) ;
 int dm_error (char*,...) ;
 int dmcub_mask ;
 int dmcub_regs ;
 int dmcub_shift ;
 int dml_init_instance (int *,int *,int *,int ) ;
 int plane_cap ;
 TYPE_3__ res_cap_rn ;
 TYPE_3__ res_cap_rn_FPGA_4pipe ;
 int res_create_funcs ;
 int res_create_maximus_funcs ;
 int resource_construct (int ,struct dc*,TYPE_2__*,int *) ;
 int vm_helper_init (scalar_t__,int) ;

__attribute__((used)) static bool construct(
 uint8_t num_virtual_links,
 struct dc *dc,
 struct dcn21_resource_pool *pool)
{
 int i;
 struct dc_context *ctx = dc->ctx;
 struct irq_service_init_data init_data;

 ctx->dc_bios->regs = &bios_regs;

 pool->base.res_cap = &res_cap_rn;






 pool->base.funcs = &dcn21_res_pool_funcs;




 pool->base.underlay_pipe_index = NO_UNDERLAY_PIPE;

 pool->base.pipe_count = 4;
 dc->caps.max_downscale_ratio = 200;
 dc->caps.i2c_speed_in_khz = 100;
 dc->caps.max_cursor_size = 256;
 dc->caps.dmdata_alloc_size = 2048;
 dc->caps.hw_3d_lut = 1;

 dc->caps.max_slave_planes = 1;
 dc->caps.post_blend_color_processing = 1;
 dc->caps.force_dp_tps4_for_cp2520 = 1;

 if (dc->ctx->dce_environment == DCE_ENV_PRODUCTION_DRV)
  dc->debug = debug_defaults_drv;
 else if (dc->ctx->dce_environment == DCE_ENV_FPGA_MAXIMUS) {
  pool->base.pipe_count = 4;
  dc->debug = debug_defaults_diags;
 } else
  dc->debug = debug_defaults_diags;


 if (dc->vm_helper)
  vm_helper_init(dc->vm_helper, 16);





 pool->base.clock_sources[DCN20_CLK_SRC_PLL0] =
   dcn21_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL0,
    &clk_src_regs[0], 0);
 pool->base.clock_sources[DCN20_CLK_SRC_PLL1] =
   dcn21_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL1,
    &clk_src_regs[1], 0);

 pool->base.clk_src_count = DCN20_CLK_SRC_TOTAL_DCN21;


 pool->base.dp_clock_source =
   dcn21_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_ID_DP_DTO,
    &clk_src_regs[0], 1);

 for (i = 0; i < pool->base.clk_src_count; i++) {
  if (pool->base.clock_sources[i] == ((void*)0)) {
   dm_error("DC: failed to create clock sources!\n");
   BREAK_TO_DEBUGGER();
   goto create_fail;
  }
 }

 pool->base.dccg = dccg2_create(ctx, &dccg_regs, &dccg_shift, &dccg_mask);
 if (pool->base.dccg == ((void*)0)) {
  dm_error("DC: failed to create dccg!\n");
  BREAK_TO_DEBUGGER();
  goto create_fail;
 }
 pool->base.pp_smu = dcn21_pp_smu_create(ctx);

 dml_init_instance(&dc->dml, &dcn2_1_soc, &dcn2_1_ip, DML_PROJECT_DCN21);

 init_data.ctx = dc->ctx;
 pool->base.irqs = dal_irq_service_dcn21_create(&init_data);
 if (!pool->base.irqs)
  goto create_fail;


 for (i = 0; i < pool->base.pipe_count; i++) {
  pool->base.hubps[i] = dcn21_hubp_create(ctx, i);
  if (pool->base.hubps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create memory input!\n");
   goto create_fail;
  }

  pool->base.ipps[i] = dcn21_ipp_create(ctx, i);
  if (pool->base.ipps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create input pixel processor!\n");
   goto create_fail;
  }

  pool->base.dpps[i] = dcn21_dpp_create(ctx, i);
  if (pool->base.dpps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create dpps!\n");
   goto create_fail;
  }
 }

 for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
  pool->base.engines[i] = dcn21_aux_engine_create(ctx, i);
  if (pool->base.engines[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create aux engine!!\n");
   goto create_fail;
  }
  pool->base.hw_i2cs[i] = dcn21_i2c_hw_create(ctx, i);
  if (pool->base.hw_i2cs[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create hw i2c!!\n");
   goto create_fail;
  }
  pool->base.sw_i2cs[i] = ((void*)0);
 }

 for (i = 0; i < pool->base.res_cap->num_opp; i++) {
  pool->base.opps[i] = dcn21_opp_create(ctx, i);
  if (pool->base.opps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create output pixel processor!\n");
   goto create_fail;
  }
 }

 for (i = 0; i < pool->base.res_cap->num_timing_generator; i++) {
  pool->base.timing_generators[i] = dcn21_timing_generator_create(
    ctx, i);
  if (pool->base.timing_generators[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create tg!\n");
   goto create_fail;
  }
 }

 pool->base.timing_generator_count = i;

 pool->base.mpc = dcn21_mpc_create(ctx);
 if (pool->base.mpc == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  dm_error("DC: failed to create mpc!\n");
  goto create_fail;
 }

 pool->base.hubbub = dcn21_hubbub_create(ctx);
 if (pool->base.hubbub == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  dm_error("DC: failed to create hubbub!\n");
  goto create_fail;
 }
 if (!dcn20_dwbc_create(ctx, &pool->base)) {
  BREAK_TO_DEBUGGER();
  dm_error("DC: failed to create dwbc!\n");
  goto create_fail;
 }
 if (!dcn20_mmhubbub_create(ctx, &pool->base)) {
  BREAK_TO_DEBUGGER();
  dm_error("DC: failed to create mcif_wb!\n");
  goto create_fail;
 }

 if (!resource_construct(num_virtual_links, dc, &pool->base,
   (!IS_FPGA_MAXIMUS_DC(dc->ctx->dce_environment) ?
   &res_create_funcs : &res_create_maximus_funcs)))
   goto create_fail;

 dcn20_hw_sequencer_construct(dc);

 dc->caps.max_planes = pool->base.pipe_count;

 for (i = 0; i < dc->caps.max_planes; ++i)
  dc->caps.planes[i] = plane_cap;

 dc->cap_funcs = cap_funcs;

 return 1;

create_fail:

 destruct(pool);

 return 0;
}
