
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn20_mpc {int mpcc_in_use_mask; } ;


 int ASSERT (int) ;
 int MPCC_DISABLED ;
 int MPCC_IDLE ;
 int * MPCC_STATUS ;
 int REG_GET (int ,int ,unsigned int*) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

void mpc2_assert_idle_mpcc(struct mpc *mpc, int id)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);
 unsigned int mpc_disabled;

 ASSERT(!(mpc20->mpcc_in_use_mask & 1 << id));
 REG_GET(MPCC_STATUS[id], MPCC_DISABLED, &mpc_disabled);
 if (mpc_disabled)
  return;

 REG_WAIT(MPCC_STATUS[id],
   MPCC_IDLE, 1,
   1, 100000);
}
