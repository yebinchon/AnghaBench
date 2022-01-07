
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pp_smu_funcs_rv {int pp_smu; int (* set_min_deep_sleep_dcfclk ) (int *,int) ;int (* set_hard_min_dcfclk_by_freq ) (int *,int) ;int (* set_hard_min_fclk_by_freq ) (int *,int) ;int (* set_display_count ) (int *,int) ;} ;
struct dc_clocks {scalar_t__ dispclk_khz; scalar_t__ phyclk_khz; scalar_t__ fclk_khz; int dcfclk_khz; int dcfclk_deep_sleep_khz; } ;
struct TYPE_8__ {struct dc_clocks clk; } ;
struct TYPE_9__ {TYPE_2__ dcn; } ;
struct TYPE_10__ {TYPE_3__ bw; } ;
struct dc_state {TYPE_4__ bw_ctx; } ;
struct dc_debug_options {scalar_t__ force_fclk_khz; } ;
struct dc {struct dc_debug_options debug; } ;
struct clk_mgr_internal {TYPE_6__* pp_smu; } ;
struct TYPE_11__ {scalar_t__ dispclk_khz; scalar_t__ phyclk_khz; scalar_t__ fclk_khz; int dcfclk_khz; int dcfclk_deep_sleep_khz; } ;
struct clk_mgr {TYPE_5__ clks; TYPE_1__* ctx; } ;
struct TYPE_12__ {struct pp_smu_funcs_rv rv_funcs; } ;
struct TYPE_7__ {struct dc* dc; } ;


 int ASSERT (TYPE_6__*) ;
 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int clk_mgr_helper_get_active_display_cnt (struct dc*,struct dc_state*) ;
 int ramp_up_dispclk_with_dpp (struct clk_mgr_internal*,struct dc*,struct dc_clocks*) ;
 scalar_t__ should_set_clock (int,int,int) ;
 int stub1 (int *,int) ;
 int stub2 (int *,int) ;
 int stub3 (int *,int) ;
 int stub4 (int *,int) ;
 int stub5 (int *,int) ;
 int stub6 (int *,int) ;
 int stub7 (int *,int) ;

__attribute__((used)) static void rv1_update_clocks(struct clk_mgr *clk_mgr_base,
   struct dc_state *context,
   bool safe_to_lower)
{
 struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
 struct dc *dc = clk_mgr_base->ctx->dc;
 struct dc_debug_options *debug = &dc->debug;
 struct dc_clocks *new_clocks = &context->bw_ctx.bw.dcn.clk;
 struct pp_smu_funcs_rv *pp_smu = ((void*)0);
 bool send_request_to_increase = 0;
 bool send_request_to_lower = 0;
 int display_count;

 bool enter_display_off = 0;

 ASSERT(clk_mgr->pp_smu);

 pp_smu = &clk_mgr->pp_smu->rv_funcs;

 display_count = clk_mgr_helper_get_active_display_cnt(dc, context);

 if (display_count == 0)
  enter_display_off = 1;

 if (enter_display_off == safe_to_lower) {





  if (pp_smu->set_display_count)
   pp_smu->set_display_count(&pp_smu->pp_smu, display_count);
 }

 if (new_clocks->dispclk_khz > clk_mgr_base->clks.dispclk_khz
   || new_clocks->phyclk_khz > clk_mgr_base->clks.phyclk_khz
   || new_clocks->fclk_khz > clk_mgr_base->clks.fclk_khz
   || new_clocks->dcfclk_khz > clk_mgr_base->clks.dcfclk_khz)
  send_request_to_increase = 1;

 if (should_set_clock(safe_to_lower, new_clocks->phyclk_khz, clk_mgr_base->clks.phyclk_khz)) {
  clk_mgr_base->clks.phyclk_khz = new_clocks->phyclk_khz;
  send_request_to_lower = 1;
 }


 if (debug->force_fclk_khz != 0)
  new_clocks->fclk_khz = debug->force_fclk_khz;

 if (should_set_clock(safe_to_lower, new_clocks->fclk_khz, clk_mgr_base->clks.fclk_khz)) {
  clk_mgr_base->clks.fclk_khz = new_clocks->fclk_khz;
  send_request_to_lower = 1;
 }


 if (should_set_clock(safe_to_lower, new_clocks->dcfclk_khz, clk_mgr_base->clks.dcfclk_khz)) {
  clk_mgr_base->clks.dcfclk_khz = new_clocks->dcfclk_khz;
  send_request_to_lower = 1;
 }

 if (should_set_clock(safe_to_lower,
   new_clocks->dcfclk_deep_sleep_khz, clk_mgr_base->clks.dcfclk_deep_sleep_khz)) {
  clk_mgr_base->clks.dcfclk_deep_sleep_khz = new_clocks->dcfclk_deep_sleep_khz;
  send_request_to_lower = 1;
 }




 if (send_request_to_increase) {

  if (pp_smu->set_hard_min_fclk_by_freq &&
    pp_smu->set_hard_min_dcfclk_by_freq &&
    pp_smu->set_min_deep_sleep_dcfclk) {
   pp_smu->set_hard_min_fclk_by_freq(&pp_smu->pp_smu, new_clocks->fclk_khz / 1000);
   pp_smu->set_hard_min_dcfclk_by_freq(&pp_smu->pp_smu, new_clocks->dcfclk_khz / 1000);
   pp_smu->set_min_deep_sleep_dcfclk(&pp_smu->pp_smu, (new_clocks->dcfclk_deep_sleep_khz + 999) / 1000);
  }
 }



 if (should_set_clock(safe_to_lower, new_clocks->dispclk_khz, clk_mgr_base->clks.dispclk_khz)
   || new_clocks->dispclk_khz == clk_mgr_base->clks.dispclk_khz) {
  ramp_up_dispclk_with_dpp(clk_mgr, dc, new_clocks);
  clk_mgr_base->clks.dispclk_khz = new_clocks->dispclk_khz;
  send_request_to_lower = 1;
 }

 if (!send_request_to_increase && send_request_to_lower) {

  if (pp_smu->set_hard_min_fclk_by_freq &&
    pp_smu->set_hard_min_dcfclk_by_freq &&
    pp_smu->set_min_deep_sleep_dcfclk) {
   pp_smu->set_hard_min_fclk_by_freq(&pp_smu->pp_smu, new_clocks->fclk_khz / 1000);
   pp_smu->set_hard_min_dcfclk_by_freq(&pp_smu->pp_smu, new_clocks->dcfclk_khz / 1000);
   pp_smu->set_min_deep_sleep_dcfclk(&pp_smu->pp_smu, (new_clocks->dcfclk_deep_sleep_khz + 999) / 1000);
  }
 }
}
