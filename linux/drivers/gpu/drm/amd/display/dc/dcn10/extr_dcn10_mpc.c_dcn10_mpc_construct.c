
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcn_mpc_shift {int dummy; } ;
struct dcn_mpc_registers {int dummy; } ;
struct dcn_mpc_mask {int dummy; } ;
struct TYPE_2__ {int * mpcc_array; int * funcs; struct dc_context* ctx; } ;
struct dcn10_mpc {int num_mpcc; TYPE_1__ base; scalar_t__ mpcc_in_use_mask; struct dcn_mpc_mask const* mpc_mask; struct dcn_mpc_shift const* mpc_shift; struct dcn_mpc_registers const* mpc_regs; } ;
struct dc_context {int dummy; } ;


 int MAX_MPCC ;
 int dcn10_mpc_funcs ;
 int mpc1_init_mpcc (int *,int) ;

void dcn10_mpc_construct(struct dcn10_mpc *mpc10,
 struct dc_context *ctx,
 const struct dcn_mpc_registers *mpc_regs,
 const struct dcn_mpc_shift *mpc_shift,
 const struct dcn_mpc_mask *mpc_mask,
 int num_mpcc)
{
 int i;

 mpc10->base.ctx = ctx;

 mpc10->base.funcs = &dcn10_mpc_funcs;

 mpc10->mpc_regs = mpc_regs;
 mpc10->mpc_shift = mpc_shift;
 mpc10->mpc_mask = mpc_mask;

 mpc10->mpcc_in_use_mask = 0;
 mpc10->num_mpcc = num_mpcc;

 for (i = 0; i < MAX_MPCC; i++)
  mpc1_init_mpcc(&mpc10->base.mpcc_array[i], i);
}
