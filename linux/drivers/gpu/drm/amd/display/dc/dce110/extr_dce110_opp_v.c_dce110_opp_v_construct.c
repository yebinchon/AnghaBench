
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dc_context* ctx; int * funcs; } ;
struct dce110_opp {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int funcs ;

void dce110_opp_v_construct(struct dce110_opp *opp110,
 struct dc_context *ctx)
{
 opp110->base.funcs = &funcs;

 opp110->base.ctx = ctx;
}
