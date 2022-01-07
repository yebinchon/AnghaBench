
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;


 int * MPCC_IDLE ;
 int * MPCC_OPP_ID ;
 int * MPCC_STATUS ;
 int * MPCC_TOP_SEL ;
 int REG_GET (int ,int *,unsigned int*) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

bool mpc1_is_mpcc_idle(struct mpc *mpc, int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);
 unsigned int top_sel;
 unsigned int opp_id;
 unsigned int idle;

 REG_GET(MPCC_TOP_SEL[mpcc_id], MPCC_TOP_SEL, &top_sel);
 REG_GET(MPCC_OPP_ID[mpcc_id], MPCC_OPP_ID, &opp_id);
 REG_GET(MPCC_STATUS[mpcc_id], MPCC_IDLE, &idle);
 if (top_sel == 0xf && opp_id == 0xf && idle)
  return 1;
 else
  return 0;
}
