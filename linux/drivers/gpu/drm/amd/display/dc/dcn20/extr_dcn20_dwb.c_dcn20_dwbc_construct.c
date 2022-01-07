
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcn20_dwbc_shift {int dummy; } ;
struct dcn20_dwbc_registers {int dummy; } ;
struct dcn20_dwbc_mask {int dummy; } ;
struct TYPE_2__ {int inst; int * funcs; struct dc_context* ctx; } ;
struct dcn20_dwbc {struct dcn20_dwbc_mask const* dwbc_mask; struct dcn20_dwbc_shift const* dwbc_shift; struct dcn20_dwbc_registers const* dwbc_regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dcn20_dwbc_funcs ;

void dcn20_dwbc_construct(struct dcn20_dwbc *dwbc20,
  struct dc_context *ctx,
  const struct dcn20_dwbc_registers *dwbc_regs,
  const struct dcn20_dwbc_shift *dwbc_shift,
  const struct dcn20_dwbc_mask *dwbc_mask,
  int inst)
{
 dwbc20->base.ctx = ctx;

 dwbc20->base.inst = inst;
 dwbc20->base.funcs = &dcn20_dwbc_funcs;

 dwbc20->dwbc_regs = dwbc_regs;
 dwbc20->dwbc_shift = dwbc_shift;
 dwbc20->dwbc_mask = dwbc_mask;
}
