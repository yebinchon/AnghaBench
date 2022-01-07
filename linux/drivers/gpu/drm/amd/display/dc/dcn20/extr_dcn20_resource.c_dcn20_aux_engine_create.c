
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dce_aux {int dummy; } ;
struct dc_context {int dummy; } ;
struct aux_engine_dce110 {struct dce_aux base; } ;


 int AUX_TIMEOUT_PERIOD ;
 int GFP_KERNEL ;
 int SW_AUX_TIMEOUT_PERIOD_MULTIPLIER ;
 int * aux_engine_regs ;
 int dce110_aux_engine_construct (struct aux_engine_dce110*,struct dc_context*,size_t,int,int *) ;
 struct aux_engine_dce110* kzalloc (int,int ) ;

struct dce_aux *dcn20_aux_engine_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct aux_engine_dce110 *aux_engine =
  kzalloc(sizeof(struct aux_engine_dce110), GFP_KERNEL);

 if (!aux_engine)
  return ((void*)0);

 dce110_aux_engine_construct(aux_engine, ctx, inst,
        SW_AUX_TIMEOUT_PERIOD_MULTIPLIER * AUX_TIMEOUT_PERIOD,
        &aux_engine_regs[inst]);

 return &aux_engine->base;
}
