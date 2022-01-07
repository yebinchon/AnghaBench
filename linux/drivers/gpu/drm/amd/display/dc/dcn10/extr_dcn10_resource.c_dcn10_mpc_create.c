
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn10_mpc {struct mpc base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dcn10_mpc_construct (struct dcn10_mpc*,struct dc_context*,int *,int *,int *,int) ;
 struct dcn10_mpc* kzalloc (int,int ) ;
 int mpc_mask ;
 int mpc_regs ;
 int mpc_shift ;

__attribute__((used)) static struct mpc *dcn10_mpc_create(struct dc_context *ctx)
{
 struct dcn10_mpc *mpc10 = kzalloc(sizeof(struct dcn10_mpc),
       GFP_KERNEL);

 if (!mpc10)
  return ((void*)0);

 dcn10_mpc_construct(mpc10, ctx,
   &mpc_regs,
   &mpc_shift,
   &mpc_mask,
   4);

 return &mpc10->base;
}
