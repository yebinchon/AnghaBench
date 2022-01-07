
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dce110_clk_src_shift {int dummy; } ;
struct dce110_clk_src_regs {int dummy; } ;
struct dce110_clk_src_mask {int dummy; } ;
struct TYPE_3__ {int id; int * funcs; struct dc_context* ctx; } ;
struct dce110_clk_src {struct dc_bios* bios; int ext_clk_khz; struct dce110_clk_src_mask const* cs_mask; struct dce110_clk_src_shift const* cs_shift; struct dce110_clk_src_regs const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;
struct TYPE_4__ {int external_clock_source_frequency_for_dp; } ;
struct dc_bios {TYPE_2__ fw_info; int fw_info_valid; } ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;


 int ASSERT_CRITICAL (int) ;
 int dce112_clk_src_funcs ;

bool dce112_clk_src_construct(
 struct dce110_clk_src *clk_src,
 struct dc_context *ctx,
 struct dc_bios *bios,
 enum clock_source_id id,
 const struct dce110_clk_src_regs *regs,
 const struct dce110_clk_src_shift *cs_shift,
 const struct dce110_clk_src_mask *cs_mask)
{
 clk_src->base.ctx = ctx;
 clk_src->bios = bios;
 clk_src->base.id = id;
 clk_src->base.funcs = &dce112_clk_src_funcs;

 clk_src->regs = regs;
 clk_src->cs_shift = cs_shift;
 clk_src->cs_mask = cs_mask;

 if (!clk_src->bios->fw_info_valid) {
  ASSERT_CRITICAL(0);
  return 0;
 }

 clk_src->ext_clk_khz = clk_src->bios->fw_info.external_clock_source_frequency_for_dp;

 return 1;
}
