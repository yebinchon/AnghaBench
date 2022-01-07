
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct input_pixel_processor {int dummy; } ;
struct dce_ipp {struct input_pixel_processor base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int dce_ipp_construct (struct dce_ipp*,struct dc_context*,size_t,int *,int *,int *) ;
 int ipp_mask ;
 int * ipp_regs ;
 int ipp_shift ;
 struct dce_ipp* kzalloc (int,int ) ;

__attribute__((used)) static struct input_pixel_processor *dce100_ipp_create(
 struct dc_context *ctx, uint32_t inst)
{
 struct dce_ipp *ipp = kzalloc(sizeof(struct dce_ipp), GFP_KERNEL);

 if (!ipp) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 dce_ipp_construct(ipp, ctx, inst,
   &ipp_regs[inst], &ipp_shift, &ipp_mask);
 return &ipp->base;
}
