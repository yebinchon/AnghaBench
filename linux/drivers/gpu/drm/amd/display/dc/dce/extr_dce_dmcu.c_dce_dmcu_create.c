
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmcu {int * funcs; } ;
struct dce_dmcu_shift {int dummy; } ;
struct dce_dmcu_registers {int dummy; } ;
struct dce_dmcu_mask {int dummy; } ;
struct dce_dmcu {struct dmcu base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int dce_dmcu_construct (struct dce_dmcu*,struct dc_context*,struct dce_dmcu_registers const*,struct dce_dmcu_shift const*,struct dce_dmcu_mask const*) ;
 int dce_funcs ;
 struct dce_dmcu* kzalloc (int,int ) ;

struct dmcu *dce_dmcu_create(
 struct dc_context *ctx,
 const struct dce_dmcu_registers *regs,
 const struct dce_dmcu_shift *dmcu_shift,
 const struct dce_dmcu_mask *dmcu_mask)
{
 struct dce_dmcu *dmcu_dce = kzalloc(sizeof(*dmcu_dce), GFP_KERNEL);

 if (dmcu_dce == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 dce_dmcu_construct(
  dmcu_dce, ctx, regs, dmcu_shift, dmcu_mask);

 dmcu_dce->base.funcs = &dce_funcs;

 return &dmcu_dce->base;
}
