
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce_ipp_shift {int dummy; } ;
struct dce_ipp_registers {int dummy; } ;
struct dce_ipp_mask {int dummy; } ;
struct TYPE_2__ {int inst; int * funcs; struct dc_context* ctx; } ;
struct dce_ipp {struct dce_ipp_mask const* ipp_mask; struct dce_ipp_shift const* ipp_shift; struct dce_ipp_registers const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dce_ipp_funcs ;

void dce_ipp_construct(
 struct dce_ipp *ipp_dce,
 struct dc_context *ctx,
 int inst,
 const struct dce_ipp_registers *regs,
 const struct dce_ipp_shift *ipp_shift,
 const struct dce_ipp_mask *ipp_mask)
{
 ipp_dce->base.ctx = ctx;
 ipp_dce->base.inst = inst;
 ipp_dce->base.funcs = &dce_ipp_funcs;

 ipp_dce->regs = regs;
 ipp_dce->ipp_shift = ipp_shift;
 ipp_dce->ipp_mask = ipp_mask;
}
