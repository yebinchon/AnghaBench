
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dc_context* ctx; int * funcs; } ;
struct dce_mem_input {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int dce110_mem_input_v_funcs ;

void dce110_mem_input_v_construct(
 struct dce_mem_input *dce_mi,
 struct dc_context *ctx)
{
 dce_mi->base.funcs = &dce110_mem_input_v_funcs;
 dce_mi->base.ctx = ctx;
}
