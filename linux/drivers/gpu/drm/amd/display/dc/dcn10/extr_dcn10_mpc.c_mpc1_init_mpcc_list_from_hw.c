
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc {unsigned int dpp_id; struct mpcc* mpcc_bot; } ;
struct mpc_tree {size_t opp_id; struct mpcc* opp_list; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int num_mpcc; int mpcc_in_use_mask; } ;


 int * MPCC_BOT_SEL ;
 int * MPCC_OPP_ID ;
 int * MPCC_TOP_SEL ;
 int * MPC_OUT_MUX ;
 int * MUX ;
 int REG_GET (int ,int *,unsigned int*) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;
 struct mpcc* mpc1_get_mpcc (struct mpc*,int) ;

void mpc1_init_mpcc_list_from_hw(
 struct mpc *mpc,
 struct mpc_tree *tree)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);
 unsigned int opp_id;
 unsigned int top_sel;
 unsigned int bot_sel;
 unsigned int out_mux;
 struct mpcc *mpcc;
 int mpcc_id;
 int bot_mpcc_id;

 REG_GET(MUX[tree->opp_id], MPC_OUT_MUX, &out_mux);

 if (out_mux != 0xf) {
  for (mpcc_id = 0; mpcc_id < mpc10->num_mpcc; mpcc_id++) {
   REG_GET(MPCC_OPP_ID[mpcc_id], MPCC_OPP_ID, &opp_id);
   REG_GET(MPCC_TOP_SEL[mpcc_id], MPCC_TOP_SEL, &top_sel);
   REG_GET(MPCC_BOT_SEL[mpcc_id], MPCC_BOT_SEL, &bot_sel);

   if (bot_sel == mpcc_id)
    bot_sel = 0xf;

   if ((opp_id == tree->opp_id) && (top_sel != 0xf)) {
    mpcc = mpc1_get_mpcc(mpc, mpcc_id);
    mpcc->dpp_id = top_sel;
    mpc10->mpcc_in_use_mask |= 1 << mpcc_id;

    if (out_mux == mpcc_id)
     tree->opp_list = mpcc;
    if (bot_sel != 0xf && bot_sel < mpc10->num_mpcc) {
     bot_mpcc_id = bot_sel;
     REG_GET(MPCC_OPP_ID[bot_mpcc_id], MPCC_OPP_ID, &opp_id);
     REG_GET(MPCC_TOP_SEL[bot_mpcc_id], MPCC_TOP_SEL, &top_sel);
     if ((opp_id == tree->opp_id) && (top_sel != 0xf)) {
      struct mpcc *mpcc_bottom = mpc1_get_mpcc(mpc, bot_mpcc_id);

      mpcc->mpcc_bot = mpcc_bottom;
     }
    }
   }
  }
 }
}
