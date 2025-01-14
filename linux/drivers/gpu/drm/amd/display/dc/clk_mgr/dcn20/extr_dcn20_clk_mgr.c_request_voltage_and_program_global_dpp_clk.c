
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct pp_smu_funcs_nv {int pp_smu; int (* set_voltage_by_freq ) (int *,int ,int) ;} ;
struct dc {TYPE_3__* res_pool; } ;
struct TYPE_11__ {unsigned int dppclk_khz; } ;
struct TYPE_12__ {TYPE_4__ clks; } ;
struct clk_mgr_internal {TYPE_6__* dccg; TYPE_5__ base; } ;
struct TYPE_14__ {int dppclk_khz; } ;
struct clk_mgr {TYPE_7__ clks; TYPE_1__* ctx; } ;
struct TYPE_13__ {unsigned int ref_dppclk; } ;
struct TYPE_10__ {TYPE_2__* pp_smu; } ;
struct TYPE_9__ {struct pp_smu_funcs_nv nv_funcs; } ;
struct TYPE_8__ {struct dc* dc; } ;


 int PP_SMU_NV_PIXELCLK ;
 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int stub1 (int *,int ,int) ;
 int stub2 (int *,int ,int) ;
 int update_global_dpp_clk (struct clk_mgr_internal*,unsigned int) ;

__attribute__((used)) static void request_voltage_and_program_global_dpp_clk(struct clk_mgr *clk_mgr_base, unsigned int khz)
{
 struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
 struct dc *dc = clk_mgr_base->ctx->dc;
 struct pp_smu_funcs_nv *pp_smu = ((void*)0);
 bool going_up = clk_mgr->base.clks.dppclk_khz < khz;

 if (dc->res_pool->pp_smu)
  pp_smu = &dc->res_pool->pp_smu->nv_funcs;

 clk_mgr->base.clks.dppclk_khz = khz;
 clk_mgr->dccg->ref_dppclk = khz;

 if (going_up && pp_smu && pp_smu->set_voltage_by_freq)
  pp_smu->set_voltage_by_freq(&pp_smu->pp_smu, PP_SMU_NV_PIXELCLK, clk_mgr_base->clks.dppclk_khz / 1000);

 update_global_dpp_clk(clk_mgr, khz);

 if (!going_up && pp_smu && pp_smu->set_voltage_by_freq)
  pp_smu->set_voltage_by_freq(&pp_smu->pp_smu, PP_SMU_NV_PIXELCLK, clk_mgr_base->clks.dppclk_khz / 1000);
}
