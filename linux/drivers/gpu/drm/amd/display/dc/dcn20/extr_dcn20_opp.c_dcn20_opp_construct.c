
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dcn20_opp_shift {int dummy; } ;
struct dcn20_opp_registers {int dummy; } ;
struct dcn20_opp_mask {int dummy; } ;
struct TYPE_2__ {int * funcs; int inst; struct dc_context* ctx; } ;
struct dcn20_opp {struct dcn20_opp_mask const* opp_mask; struct dcn20_opp_shift const* opp_shift; struct dcn20_opp_registers const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dcn20_opp_funcs ;

void dcn20_opp_construct(struct dcn20_opp *oppn20,
 struct dc_context *ctx,
 uint32_t inst,
 const struct dcn20_opp_registers *regs,
 const struct dcn20_opp_shift *opp_shift,
 const struct dcn20_opp_mask *opp_mask)
{
 oppn20->base.ctx = ctx;
 oppn20->base.inst = inst;
 oppn20->base.funcs = &dcn20_opp_funcs;

 oppn20->regs = regs;
 oppn20->opp_shift = opp_shift;
 oppn20->opp_mask = opp_mask;
}
