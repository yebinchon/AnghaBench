
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_22__ ;
typedef struct TYPE_36__ TYPE_21__ ;
typedef struct TYPE_35__ TYPE_20__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_19__ ;
typedef struct TYPE_32__ TYPE_18__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_16__ ;
typedef struct TYPE_29__ TYPE_15__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct pp_smu_funcs_nv {int pp_smu; int (* set_hard_min_uclk_by_freq ) (int *,int) ;int (* set_pstate_handshake_support ) (int *,int ) ;int (* set_hard_min_socclk_by_freq ) (int *,int) ;int (* set_min_deep_sleep_dcfclk ) (int *,int) ;int (* set_hard_min_dcfclk_by_freq ) (int *,int) ;int (* set_voltage_by_freq ) (int *,int ,int) ;int (* set_display_count ) (int *,int) ;} ;
struct dmcu {TYPE_12__* funcs; } ;
struct TYPE_24__ {TYPE_9__* pipe_ctx; } ;
struct dc_clocks {int phyclk_khz; int dcfclk_khz; int dcfclk_deep_sleep_khz; int socclk_khz; int dramclk_khz; int dispclk_khz; scalar_t__ dppclk_khz; int p_state_change_support; } ;
struct TYPE_27__ {struct dc_clocks clk; } ;
struct TYPE_28__ {TYPE_13__ dcn; } ;
struct TYPE_29__ {TYPE_14__ bw; } ;
struct dc_state {TYPE_10__ res_ctx; TYPE_15__ bw_ctx; } ;
struct TYPE_34__ {int forced_clocks; } ;
struct TYPE_35__ {int force_clock_mode; int force_min_dcfclk_mhz; } ;
struct TYPE_31__ {scalar_t__ skip_clock_update; } ;
struct dc {TYPE_1__ config; TYPE_20__ debug; TYPE_19__* res_pool; TYPE_17__ work_arounds; } ;
struct TYPE_41__ {TYPE_4__* ctx; } ;
struct clk_mgr_internal {TYPE_22__* dccg; TYPE_5__ base; } ;
struct TYPE_36__ {int dispclk_khz; int phyclk_khz; int dcfclk_khz; int dcfclk_deep_sleep_khz; int socclk_khz; int dramclk_khz; scalar_t__ dppclk_khz; int p_state_change_support; int prev_p_state_change_support; } ;
struct clk_mgr {TYPE_21__ clks; TYPE_16__* ctx; } ;
struct TYPE_43__ {int dppclk_khz; } ;
struct TYPE_44__ {TYPE_7__ bw; TYPE_6__* dpp; } ;
struct TYPE_45__ {TYPE_8__ plane_res; int plane_state; } ;
struct TYPE_42__ {int inst; } ;
struct TYPE_40__ {TYPE_3__* dc; } ;
struct TYPE_39__ {TYPE_2__* res_pool; } ;
struct TYPE_38__ {int pipe_count; } ;
struct TYPE_37__ {TYPE_11__* funcs; } ;
struct TYPE_33__ {TYPE_18__* pp_smu; struct dmcu* dmcu; } ;
struct TYPE_32__ {struct pp_smu_funcs_nv nv_funcs; } ;
struct TYPE_30__ {struct dc* dc; } ;
struct TYPE_26__ {int (* set_psr_wait_loop ) (struct dmcu*,int) ;scalar_t__ (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_25__ {int (* update_dpp_dto ) (TYPE_22__*,int,int,int) ;} ;


 int PP_SMU_NV_PHYCLK ;
 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int clk_mgr_helper_get_active_display_cnt (struct dc*,struct dc_state*) ;
 int request_voltage_and_program_disp_clk (struct clk_mgr*,int) ;
 int request_voltage_and_program_global_dpp_clk (struct clk_mgr*,scalar_t__) ;
 scalar_t__ should_set_clock (int,int,int) ;
 scalar_t__ should_update_pstate_support (int,int ,int ) ;
 int stub1 (int *,int) ;
 scalar_t__ stub10 (struct dmcu*) ;
 int stub11 (struct dmcu*,int) ;
 int stub2 (int *,int ,int) ;
 int stub3 (int *,int) ;
 int stub4 (int *,int) ;
 int stub5 (int *,int) ;
 int stub6 (int *,int ) ;
 int stub7 (int *,int) ;
 int stub8 (TYPE_22__*,int,int,int) ;
 int stub9 (TYPE_22__*,int,int,int) ;

void dcn2_update_clocks(struct clk_mgr *clk_mgr_base,
   struct dc_state *context,
   bool safe_to_lower)
{
 struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
 struct dc_clocks *new_clocks = &context->bw_ctx.bw.dcn.clk;
 struct dc *dc = clk_mgr_base->ctx->dc;
 struct pp_smu_funcs_nv *pp_smu = ((void*)0);
 int display_count;
 bool update_dispclk = 0;
 bool enter_display_off = 0;
 struct dmcu *dmcu = clk_mgr_base->ctx->dc->res_pool->dmcu;
 bool force_reset = 0;
 int i;

 if (dc->work_arounds.skip_clock_update)
  return;

 if (clk_mgr_base->clks.dispclk_khz == 0 ||
  dc->debug.force_clock_mode & 0x1) {

  force_reset = 1;

 }
 display_count = clk_mgr_helper_get_active_display_cnt(dc, context);
 if (dc->res_pool->pp_smu)
  pp_smu = &dc->res_pool->pp_smu->nv_funcs;

 if (display_count == 0)
  enter_display_off = 1;

 if (enter_display_off == safe_to_lower) {
  if (pp_smu && pp_smu->set_display_count)
   pp_smu->set_display_count(&pp_smu->pp_smu, display_count);
 }

 if (should_set_clock(safe_to_lower, new_clocks->phyclk_khz, clk_mgr_base->clks.phyclk_khz)) {
  clk_mgr_base->clks.phyclk_khz = new_clocks->phyclk_khz;
  if (pp_smu && pp_smu->set_voltage_by_freq)
   pp_smu->set_voltage_by_freq(&pp_smu->pp_smu, PP_SMU_NV_PHYCLK, clk_mgr_base->clks.phyclk_khz / 1000);
 }


 if (dc->debug.force_min_dcfclk_mhz > 0)
  new_clocks->dcfclk_khz = (new_clocks->dcfclk_khz > (dc->debug.force_min_dcfclk_mhz * 1000)) ?
    new_clocks->dcfclk_khz : (dc->debug.force_min_dcfclk_mhz * 1000);

 if (should_set_clock(safe_to_lower, new_clocks->dcfclk_khz, clk_mgr_base->clks.dcfclk_khz)) {
  clk_mgr_base->clks.dcfclk_khz = new_clocks->dcfclk_khz;
  if (pp_smu && pp_smu->set_hard_min_dcfclk_by_freq)
   pp_smu->set_hard_min_dcfclk_by_freq(&pp_smu->pp_smu, clk_mgr_base->clks.dcfclk_khz / 1000);
 }

 if (should_set_clock(safe_to_lower,
   new_clocks->dcfclk_deep_sleep_khz, clk_mgr_base->clks.dcfclk_deep_sleep_khz)) {
  clk_mgr_base->clks.dcfclk_deep_sleep_khz = new_clocks->dcfclk_deep_sleep_khz;
  if (pp_smu && pp_smu->set_min_deep_sleep_dcfclk)
   pp_smu->set_min_deep_sleep_dcfclk(&pp_smu->pp_smu, clk_mgr_base->clks.dcfclk_deep_sleep_khz / 1000);
 }

 if (should_set_clock(safe_to_lower, new_clocks->socclk_khz, clk_mgr_base->clks.socclk_khz)) {
  clk_mgr_base->clks.socclk_khz = new_clocks->socclk_khz;
  if (pp_smu && pp_smu->set_hard_min_socclk_by_freq)
   pp_smu->set_hard_min_socclk_by_freq(&pp_smu->pp_smu, clk_mgr_base->clks.socclk_khz / 1000);
 }

 if (should_update_pstate_support(safe_to_lower, new_clocks->p_state_change_support, clk_mgr_base->clks.p_state_change_support)) {
  clk_mgr_base->clks.prev_p_state_change_support = clk_mgr_base->clks.p_state_change_support;

  clk_mgr_base->clks.p_state_change_support = new_clocks->p_state_change_support;
  if (pp_smu && pp_smu->set_pstate_handshake_support)
   pp_smu->set_pstate_handshake_support(&pp_smu->pp_smu, clk_mgr_base->clks.p_state_change_support);
 }
 clk_mgr_base->clks.prev_p_state_change_support = clk_mgr_base->clks.p_state_change_support;

 if (should_set_clock(safe_to_lower, new_clocks->dramclk_khz, clk_mgr_base->clks.dramclk_khz)) {
  clk_mgr_base->clks.dramclk_khz = new_clocks->dramclk_khz;
  if (pp_smu && pp_smu->set_hard_min_uclk_by_freq)
   pp_smu->set_hard_min_uclk_by_freq(&pp_smu->pp_smu, clk_mgr_base->clks.dramclk_khz / 1000);
 }

 if (dc->config.forced_clocks == 0) {

  if (should_set_clock(safe_to_lower, new_clocks->dispclk_khz, clk_mgr_base->clks.dispclk_khz))
   request_voltage_and_program_disp_clk(clk_mgr_base, new_clocks->dispclk_khz);


  if (!safe_to_lower) {



   if (new_clocks->dppclk_khz > clk_mgr_base->clks.dppclk_khz)
    request_voltage_and_program_global_dpp_clk(clk_mgr_base, new_clocks->dppclk_khz);


   for (i = 0; i < clk_mgr->base.ctx->dc->res_pool->pipe_count; i++) {
    int dpp_inst, dppclk_khz;

    if (!context->res_ctx.pipe_ctx[i].plane_state)
     continue;

    dpp_inst = context->res_ctx.pipe_ctx[i].plane_res.dpp->inst;
    dppclk_khz = context->res_ctx.pipe_ctx[i].plane_res.bw.dppclk_khz;

    clk_mgr->dccg->funcs->update_dpp_dto(clk_mgr->dccg, dpp_inst, dppclk_khz, 1);
   }
  } else {


   if (new_clocks->dppclk_khz < clk_mgr_base->clks.dppclk_khz)
    request_voltage_and_program_global_dpp_clk(clk_mgr_base, new_clocks->dppclk_khz);

   for (i = 0; i < clk_mgr->base.ctx->dc->res_pool->pipe_count; i++) {
    int dpp_inst, dppclk_khz;

    if (!context->res_ctx.pipe_ctx[i].plane_state)
     continue;

    dpp_inst = context->res_ctx.pipe_ctx[i].plane_res.dpp->inst;
    dppclk_khz = context->res_ctx.pipe_ctx[i].plane_res.bw.dppclk_khz;

    clk_mgr->dccg->funcs->update_dpp_dto(clk_mgr->dccg, dpp_inst, dppclk_khz, 0);
   }
  }
 }
 if (update_dispclk &&
   dmcu && dmcu->funcs->is_dmcu_initialized(dmcu)) {

  dmcu->funcs->set_psr_wait_loop(dmcu,
   clk_mgr_base->clks.dispclk_khz / 1000 / 7);
 }
}
