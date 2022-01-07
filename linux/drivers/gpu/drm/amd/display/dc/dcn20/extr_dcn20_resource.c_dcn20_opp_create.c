
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct output_pixel_processor {int dummy; } ;
struct dcn20_opp {struct output_pixel_processor base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int dcn20_opp_construct (struct dcn20_opp*,struct dc_context*,size_t,int *,int *,int *) ;
 struct dcn20_opp* kzalloc (int,int ) ;
 int opp_mask ;
 int * opp_regs ;
 int opp_shift ;

struct output_pixel_processor *dcn20_opp_create(
 struct dc_context *ctx, uint32_t inst)
{
 struct dcn20_opp *opp =
  kzalloc(sizeof(struct dcn20_opp), GFP_KERNEL);

 if (!opp) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 dcn20_opp_construct(opp, ctx, inst,
   &opp_regs[inst], &opp_shift, &opp_mask);
 return &opp->base;
}
