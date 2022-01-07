
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn20_mpc {struct mpc base; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dcn20_mpc_construct (struct dcn20_mpc*,struct dc_context*,int *,int *,int *,int) ;
 struct dcn20_mpc* kzalloc (int,int ) ;
 int mpc_mask ;
 int mpc_regs ;
 int mpc_shift ;

struct mpc *dcn20_mpc_create(struct dc_context *ctx)
{
 struct dcn20_mpc *mpc20 = kzalloc(sizeof(struct dcn20_mpc),
       GFP_KERNEL);

 if (!mpc20)
  return ((void*)0);

 dcn20_mpc_construct(mpc20, ctx,
   &mpc_regs,
   &mpc_shift,
   &mpc_mask,
   6);

 return &mpc20->base;
}
