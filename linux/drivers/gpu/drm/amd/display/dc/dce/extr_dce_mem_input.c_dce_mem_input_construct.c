
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce_mem_input_shift {int dummy; } ;
struct dce_mem_input_registers {int dummy; } ;
struct dce_mem_input_mask {int dummy; } ;
struct TYPE_2__ {int inst; int * funcs; struct dc_context* ctx; } ;
struct dce_mem_input {struct dce_mem_input_mask const* masks; struct dce_mem_input_shift const* shifts; struct dce_mem_input_registers const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dce_mi_funcs ;

void dce_mem_input_construct(
 struct dce_mem_input *dce_mi,
 struct dc_context *ctx,
 int inst,
 const struct dce_mem_input_registers *regs,
 const struct dce_mem_input_shift *mi_shift,
 const struct dce_mem_input_mask *mi_mask)
{
 dce_mi->base.ctx = ctx;

 dce_mi->base.inst = inst;
 dce_mi->base.funcs = &dce_mi_funcs;

 dce_mi->regs = regs;
 dce_mi->shifts = mi_shift;
 dce_mi->masks = mi_mask;
}
