
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct input_pixel_processor {int dummy; } ;
struct dcn10_ipp {struct input_pixel_processor base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int dcn20_ipp_construct (struct dcn10_ipp*,struct dc_context*,size_t,int *,int *,int *) ;
 int ipp_mask ;
 int * ipp_regs ;
 int ipp_shift ;
 struct dcn10_ipp* kzalloc (int,int ) ;

struct input_pixel_processor *dcn20_ipp_create(
 struct dc_context *ctx, uint32_t inst)
{
 struct dcn10_ipp *ipp =
  kzalloc(sizeof(struct dcn10_ipp), GFP_KERNEL);

 if (!ipp) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 dcn20_ipp_construct(ipp, ctx, inst,
   &ipp_regs[inst], &ipp_shift, &ipp_mask);
 return &ipp->base;
}
