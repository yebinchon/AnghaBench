
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce_mem_input_shift {int dummy; } ;
struct dce_mem_input_registers {int dummy; } ;
struct dce_mem_input_mask {int dummy; } ;
struct TYPE_2__ {int * funcs; } ;
struct dce_mem_input {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dce120_mi_funcs ;
 int dce_mem_input_construct (struct dce_mem_input*,struct dc_context*,int,struct dce_mem_input_registers const*,struct dce_mem_input_shift const*,struct dce_mem_input_mask const*) ;

void dce120_mem_input_construct(
 struct dce_mem_input *dce_mi,
 struct dc_context *ctx,
 int inst,
 const struct dce_mem_input_registers *regs,
 const struct dce_mem_input_shift *mi_shift,
 const struct dce_mem_input_mask *mi_mask)
{
 dce_mem_input_construct(dce_mi, ctx, inst, regs, mi_shift, mi_mask);
 dce_mi->base.funcs = &dce120_mi_funcs;
}
