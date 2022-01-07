
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ade_hw_ctx {int power_on; int ade_core_clk; int reset; int media_noc_clk; } ;


 int DRM_ERROR (char*,...) ;
 int ade_init (struct ade_hw_ctx*) ;
 int clk_prepare_enable (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int ade_power_up(struct ade_hw_ctx *ctx)
{
 int ret;

 ret = clk_prepare_enable(ctx->media_noc_clk);
 if (ret) {
  DRM_ERROR("failed to enable media_noc_clk (%d)\n", ret);
  return ret;
 }

 ret = reset_control_deassert(ctx->reset);
 if (ret) {
  DRM_ERROR("failed to deassert reset\n");
  return ret;
 }

 ret = clk_prepare_enable(ctx->ade_core_clk);
 if (ret) {
  DRM_ERROR("failed to enable ade_core_clk (%d)\n", ret);
  return ret;
 }

 ade_init(ctx);
 ctx->power_on = 1;
 return 0;
}
