
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccg {int * funcs; struct dc_context* ctx; } ;
struct dcn_dccg {struct dccg base; struct dccg_mask const* dccg_mask; struct dccg_shift const* dccg_shift; struct dccg_registers const* regs; } ;
struct dccg_shift {int dummy; } ;
struct dccg_registers {int dummy; } ;
struct dccg_mask {int dummy; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int dccg2_funcs ;
 struct dcn_dccg* kzalloc (int,int ) ;

struct dccg *dccg2_create(
 struct dc_context *ctx,
 const struct dccg_registers *regs,
 const struct dccg_shift *dccg_shift,
 const struct dccg_mask *dccg_mask)
{
 struct dcn_dccg *dccg_dcn = kzalloc(sizeof(*dccg_dcn), GFP_KERNEL);
 struct dccg *base;

 if (dccg_dcn == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 base = &dccg_dcn->base;
 base->ctx = ctx;
 base->funcs = &dccg2_funcs;

 dccg_dcn->regs = regs;
 dccg_dcn->dccg_shift = dccg_shift;
 dccg_dcn->dccg_mask = dccg_mask;

 return &dccg_dcn->base;
}
