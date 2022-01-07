
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hubp {int dummy; } ;
struct dcn20_hubp {struct hubp base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 scalar_t__ hubp2_construct (struct dcn20_hubp*,struct dc_context*,size_t,int *,int *,int *) ;
 int hubp_mask ;
 int * hubp_regs ;
 int hubp_shift ;
 int kfree (struct dcn20_hubp*) ;
 struct dcn20_hubp* kzalloc (int,int ) ;

struct hubp *dcn20_hubp_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dcn20_hubp *hubp2 =
  kzalloc(sizeof(struct dcn20_hubp), GFP_KERNEL);

 if (!hubp2)
  return ((void*)0);

 if (hubp2_construct(hubp2, ctx, inst,
   &hubp_regs[inst], &hubp_shift, &hubp_mask))
  return &hubp2->base;

 BREAK_TO_DEBUGGER();
 kfree(hubp2);
 return ((void*)0);
}
