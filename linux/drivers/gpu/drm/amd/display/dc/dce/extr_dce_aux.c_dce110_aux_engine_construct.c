
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct dce_aux {void* inst; scalar_t__ max_defer_write_retry; scalar_t__ delay; struct dc_context* ctx; int * ddc; } ;
struct dce110_aux_registers {int dummy; } ;
struct dc_context {int dummy; } ;
struct aux_engine_dce110 {struct dce_aux base; struct dce110_aux_registers const* regs; void* timeout_period; } ;



struct dce_aux *dce110_aux_engine_construct(struct aux_engine_dce110 *aux_engine110,
  struct dc_context *ctx,
  uint32_t inst,
  uint32_t timeout_period,
  const struct dce110_aux_registers *regs)
{
 aux_engine110->base.ddc = ((void*)0);
 aux_engine110->base.ctx = ctx;
 aux_engine110->base.delay = 0;
 aux_engine110->base.max_defer_write_retry = 0;
 aux_engine110->base.inst = inst;
 aux_engine110->timeout_period = timeout_period;
 aux_engine110->regs = regs;

 return &aux_engine110->base;
}
