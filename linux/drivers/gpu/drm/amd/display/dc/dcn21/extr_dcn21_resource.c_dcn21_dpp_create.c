
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct dpp {int dummy; } ;
struct dcn20_dpp {struct dpp base; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 scalar_t__ dpp2_construct (struct dcn20_dpp*,struct dc_context*,size_t,int *,int *,int *) ;
 int kfree (struct dcn20_dpp*) ;
 struct dcn20_dpp* kzalloc (int,int ) ;
 int tf_mask ;
 int * tf_regs ;
 int tf_shift ;

__attribute__((used)) static struct dpp *dcn21_dpp_create(
 struct dc_context *ctx,
 uint32_t inst)
{
 struct dcn20_dpp *dpp =
  kzalloc(sizeof(struct dcn20_dpp), GFP_KERNEL);

 if (!dpp)
  return ((void*)0);

 if (dpp2_construct(dpp, ctx, inst,
   &tf_regs[inst], &tf_shift, &tf_mask))
  return &dpp->base;

 BREAK_TO_DEBUGGER();
 kfree(dpp);
 return ((void*)0);
}
