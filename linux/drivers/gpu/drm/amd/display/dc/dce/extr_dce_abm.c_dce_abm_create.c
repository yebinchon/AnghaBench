
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_abm_shift {int dummy; } ;
struct dce_abm_registers {int dummy; } ;
struct dce_abm_mask {int dummy; } ;
struct abm {int * funcs; } ;
struct dce_abm {struct abm base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int dce_abm_construct (struct dce_abm*,struct dc_context*,struct dce_abm_registers const*,struct dce_abm_shift const*,struct dce_abm_mask const*) ;
 int dce_funcs ;
 struct dce_abm* kzalloc (int,int ) ;

struct abm *dce_abm_create(
 struct dc_context *ctx,
 const struct dce_abm_registers *regs,
 const struct dce_abm_shift *abm_shift,
 const struct dce_abm_mask *abm_mask)
{
 struct dce_abm *abm_dce = kzalloc(sizeof(*abm_dce), GFP_KERNEL);

 if (abm_dce == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 dce_abm_construct(abm_dce, ctx, regs, abm_shift, abm_mask);

 abm_dce->base.funcs = &dce_funcs;

 return &abm_dce->base;
}
