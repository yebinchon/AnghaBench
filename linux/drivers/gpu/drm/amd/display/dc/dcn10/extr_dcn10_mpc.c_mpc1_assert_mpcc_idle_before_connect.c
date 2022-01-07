
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;


 int ASSERT (int) ;
 int MPCC_BUSY ;
 int MPCC_IDLE ;
 int * MPCC_STATUS ;
 int * MPCC_TOP_SEL ;
 int REG_GET (int ,int *,unsigned int*) ;
 int REG_GET_2 (int ,int ,unsigned int*,int ,unsigned int*) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

void mpc1_assert_mpcc_idle_before_connect(struct mpc *mpc, int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);
 unsigned int top_sel, mpc_busy, mpc_idle;

 REG_GET(MPCC_TOP_SEL[mpcc_id],
   MPCC_TOP_SEL, &top_sel);

 if (top_sel == 0xf) {
  REG_GET_2(MPCC_STATUS[mpcc_id],
    MPCC_BUSY, &mpc_busy,
    MPCC_IDLE, &mpc_idle);

  ASSERT(mpc_busy == 0);
  ASSERT(mpc_idle == 1);
 }
}
