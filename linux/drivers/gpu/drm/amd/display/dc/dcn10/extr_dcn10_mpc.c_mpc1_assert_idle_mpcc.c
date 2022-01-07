
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn10_mpc {int mpcc_in_use_mask; } ;


 int ASSERT (int) ;
 int MPCC_IDLE ;
 int * MPCC_STATUS ;
 int REG_WAIT (int ,int ,int,int,int) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

void mpc1_assert_idle_mpcc(struct mpc *mpc, int id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);

 ASSERT(!(mpc10->mpcc_in_use_mask & 1 << id));
 REG_WAIT(MPCC_STATUS[id],
   MPCC_IDLE, 1,
   1, 100000);
}
