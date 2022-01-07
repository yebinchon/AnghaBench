
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {struct dpp base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dpp1_construct (struct dcn10_dpp*,struct dc_context*,size_t,int *,int *,int *) ;
 struct dcn10_dpp* kzalloc (int,int ) ;
 int tf_mask ;
 int * tf_regs ;
 int tf_shift ;

__attribute__((used)) static struct dpp *dcn10_dpp_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dcn10_dpp *dpp =
  kzalloc(sizeof(struct dcn10_dpp), GFP_KERNEL);

 if (!dpp)
  return ((void*)0);

 dpp1_construct(dpp, ctx, inst,
         &tf_regs[inst], &tf_shift, &tf_mask);
 return &dpp->base;
}
