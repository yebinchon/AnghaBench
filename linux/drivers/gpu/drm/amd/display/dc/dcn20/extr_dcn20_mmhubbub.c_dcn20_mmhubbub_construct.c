
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcn20_mmhubbub_shift {int dummy; } ;
struct dcn20_mmhubbub_registers {int dummy; } ;
struct dcn20_mmhubbub_mask {int dummy; } ;
struct TYPE_2__ {int inst; int * funcs; struct dc_context* ctx; } ;
struct dcn20_mmhubbub {struct dcn20_mmhubbub_mask const* mcif_wb_mask; struct dcn20_mmhubbub_shift const* mcif_wb_shift; struct dcn20_mmhubbub_registers const* mcif_wb_regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dcn20_mmhubbub_funcs ;

void dcn20_mmhubbub_construct(struct dcn20_mmhubbub *mcif_wb20,
  struct dc_context *ctx,
  const struct dcn20_mmhubbub_registers *mcif_wb_regs,
  const struct dcn20_mmhubbub_shift *mcif_wb_shift,
  const struct dcn20_mmhubbub_mask *mcif_wb_mask,
  int inst)
{
 mcif_wb20->base.ctx = ctx;

 mcif_wb20->base.inst = inst;
 mcif_wb20->base.funcs = &dcn20_mmhubbub_funcs;

 mcif_wb20->mcif_wb_regs = mcif_wb_regs;
 mcif_wb20->mcif_wb_shift = mcif_wb_shift;
 mcif_wb20->mcif_wb_mask = mcif_wb_mask;
}
