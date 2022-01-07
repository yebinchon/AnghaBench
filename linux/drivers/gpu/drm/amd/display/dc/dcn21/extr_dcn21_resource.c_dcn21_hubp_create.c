
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hubp {int dummy; } ;
struct dcn21_hubp {struct hubp base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 scalar_t__ hubp21_construct (struct dcn21_hubp*,struct dc_context*,size_t,int *,int *,int *) ;
 int hubp_mask ;
 int * hubp_regs ;
 int hubp_shift ;
 int kfree (struct dcn21_hubp*) ;
 struct dcn21_hubp* kzalloc (int,int ) ;

__attribute__((used)) static struct hubp *dcn21_hubp_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dcn21_hubp *hubp21 =
  kzalloc(sizeof(struct dcn21_hubp), GFP_KERNEL);

 if (!hubp21)
  return ((void*)0);

 if (hubp21_construct(hubp21, ctx, inst,
   &hubp_regs[inst], &hubp_shift, &hubp_mask))
  return &hubp21->base;

 BREAK_TO_DEBUGGER();
 kfree(hubp21);
 return ((void*)0);
}
