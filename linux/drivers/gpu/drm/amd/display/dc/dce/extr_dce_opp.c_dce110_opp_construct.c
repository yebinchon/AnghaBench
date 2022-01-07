
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dce_opp_shift {int dummy; } ;
struct dce_opp_registers {int dummy; } ;
struct dce_opp_mask {int dummy; } ;
struct TYPE_2__ {int inst; struct dc_context* ctx; int * funcs; } ;
struct dce110_opp {struct dce_opp_mask const* opp_mask; struct dce_opp_shift const* opp_shift; struct dce_opp_registers const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int funcs ;

void dce110_opp_construct(struct dce110_opp *opp110,
 struct dc_context *ctx,
 uint32_t inst,
 const struct dce_opp_registers *regs,
 const struct dce_opp_shift *opp_shift,
 const struct dce_opp_mask *opp_mask)
{
 opp110->base.funcs = &funcs;

 opp110->base.ctx = ctx;

 opp110->base.inst = inst;

 opp110->regs = regs;
 opp110->opp_shift = opp_shift;
 opp110->opp_mask = opp_mask;
}
