
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;


 int ASSERT (int) ;
 int MPCC_BUSY ;
 int MPCC_DISABLED ;
 int MPCC_IDLE ;
 int * MPCC_STATUS ;
 int * MPCC_TOP_SEL ;
 int REG_GET (int ,int *,unsigned int*) ;
 int REG_GET_3 (int ,int ,unsigned int*,int ,unsigned int*,int ,unsigned int*) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

void mpc2_assert_mpcc_idle_before_connect(struct mpc *mpc, int mpcc_id)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);
 unsigned int top_sel, mpc_busy, mpc_idle, mpc_disabled;

 REG_GET(MPCC_TOP_SEL[mpcc_id],
   MPCC_TOP_SEL, &top_sel);

 REG_GET_3(MPCC_STATUS[mpcc_id],
   MPCC_BUSY, &mpc_busy,
   MPCC_IDLE, &mpc_idle,
   MPCC_DISABLED, &mpc_disabled);

 if (top_sel == 0xf) {
  ASSERT(!mpc_busy);
  ASSERT(mpc_idle);
  ASSERT(mpc_disabled);
 } else {
  ASSERT(!mpc_disabled);
  ASSERT(!mpc_idle);
 }
}
