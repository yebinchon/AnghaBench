
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dcn10_opp_shift {int dummy; } ;
struct dcn10_opp_registers {int dummy; } ;
struct dcn10_opp_mask {int dummy; } ;
struct TYPE_2__ {int * funcs; int inst; struct dc_context* ctx; } ;
struct dcn10_opp {struct dcn10_opp_mask const* opp_mask; struct dcn10_opp_shift const* opp_shift; struct dcn10_opp_registers const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dcn10_opp_funcs ;

void dcn10_opp_construct(struct dcn10_opp *oppn10,
 struct dc_context *ctx,
 uint32_t inst,
 const struct dcn10_opp_registers *regs,
 const struct dcn10_opp_shift *opp_shift,
 const struct dcn10_opp_mask *opp_mask)
{

 oppn10->base.ctx = ctx;
 oppn10->base.inst = inst;
 oppn10->base.funcs = &dcn10_opp_funcs;

 oppn10->regs = regs;
 oppn10->opp_shift = opp_shift;
 oppn10->opp_mask = opp_mask;
}
