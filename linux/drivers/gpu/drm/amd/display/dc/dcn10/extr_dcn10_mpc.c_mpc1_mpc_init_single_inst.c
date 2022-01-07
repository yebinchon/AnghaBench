
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc {int * mpcc_array; } ;
struct dcn10_mpc {int dummy; } ;


 int MAX_OPP ;
 int * MPCC_BOT_SEL ;
 int * MPCC_OPP_ID ;
 int * MPCC_TOP_SEL ;
 int MPC_OUT_MUX ;
 int * MUX ;
 scalar_t__ REG (int ) ;
 int REG_GET (int ,int *,int*) ;
 int REG_SET (int ,int ,int *,int) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;
 int mpc1_init_mpcc (int *,unsigned int) ;

void mpc1_mpc_init_single_inst(struct mpc *mpc, unsigned int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);
 int opp_id;

 REG_GET(MPCC_OPP_ID[mpcc_id], MPCC_OPP_ID, &opp_id);

 REG_SET(MPCC_TOP_SEL[mpcc_id], 0, MPCC_TOP_SEL, 0xf);
 REG_SET(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, 0xf);
 REG_SET(MPCC_OPP_ID[mpcc_id], 0, MPCC_OPP_ID, 0xf);

 mpc1_init_mpcc(&(mpc->mpcc_array[mpcc_id]), mpcc_id);

 if (opp_id < MAX_OPP && REG(MUX[opp_id]))
  REG_UPDATE(MUX[opp_id], MPC_OUT_MUX, 0xf);
}
