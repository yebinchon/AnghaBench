
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_context {TYPE_2__* dc; } ;
struct TYPE_3__ {int dprefclk_khz; } ;
struct clk_mgr_internal {TYPE_1__ base; } ;
struct TYPE_4__ {int hwseq; } ;


 int dce120_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*) ;
 int dce121_clock_patch_xgmi_ss_info (struct clk_mgr_internal*) ;
 scalar_t__ dce121_xgmi_enabled (int ) ;

void dce121_clk_mgr_construct(struct dc_context *ctx, struct clk_mgr_internal *clk_mgr)
{
 dce120_clk_mgr_construct(ctx, clk_mgr);
 clk_mgr->base.dprefclk_khz = 625000;





 if (dce121_xgmi_enabled(ctx->dc->hwseq))
  dce121_clock_patch_xgmi_ss_info(clk_mgr);

}
