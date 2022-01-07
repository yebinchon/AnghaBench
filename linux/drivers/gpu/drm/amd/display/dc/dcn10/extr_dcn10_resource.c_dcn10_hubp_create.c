
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {struct hubp base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dcn10_hubp_construct (struct dcn10_hubp*,struct dc_context*,size_t,int *,int *,int *) ;
 int hubp_mask ;
 int * hubp_regs ;
 int hubp_shift ;
 struct dcn10_hubp* kzalloc (int,int ) ;

__attribute__((used)) static struct hubp *dcn10_hubp_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dcn10_hubp *hubp1 =
  kzalloc(sizeof(struct dcn10_hubp), GFP_KERNEL);

 if (!hubp1)
  return ((void*)0);

 dcn10_hubp_construct(hubp1, ctx, inst,
        &hubp_regs[inst], &hubp_shift, &hubp_mask);
 return &hubp1->base;
}
