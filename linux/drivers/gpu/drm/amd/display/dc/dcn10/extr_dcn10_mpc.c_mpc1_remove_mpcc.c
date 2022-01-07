
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc {int mpcc_id; int dpp_id; struct mpcc* mpcc_bot; } ;
struct mpc_tree {size_t opp_id; struct mpcc* opp_list; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int mpcc_in_use_mask; } ;


 int MPCC_BLEND_MODE_TOP_LAYER_PASSTHROUGH ;
 int * MPCC_BOT_SEL ;
 int * MPCC_CONTROL ;
 int MPCC_MODE ;
 int * MPCC_OPP_ID ;
 int * MPCC_TOP_SEL ;
 int MPC_OUT_MUX ;
 int * MUX ;
 int REG_SET (int ,int ,int *,int) ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

void mpc1_remove_mpcc(
 struct mpc *mpc,
 struct mpc_tree *tree,
 struct mpcc *mpcc_to_remove)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);
 bool found = 0;
 int mpcc_id = mpcc_to_remove->mpcc_id;

 if (tree->opp_list == mpcc_to_remove) {
  found = 1;

  if (mpcc_to_remove->mpcc_bot) {

   tree->opp_list = mpcc_to_remove->mpcc_bot;
   REG_UPDATE(MUX[tree->opp_id], MPC_OUT_MUX, tree->opp_list->mpcc_id);
  } else {

   tree->opp_list = ((void*)0);
   REG_UPDATE(MUX[tree->opp_id], MPC_OUT_MUX, 0xf);
  }
 } else {

  struct mpcc *temp_mpcc = tree->opp_list;

  while (temp_mpcc && temp_mpcc->mpcc_bot != mpcc_to_remove)
   temp_mpcc = temp_mpcc->mpcc_bot;

  if (temp_mpcc && temp_mpcc->mpcc_bot == mpcc_to_remove) {
   found = 1;
   temp_mpcc->mpcc_bot = mpcc_to_remove->mpcc_bot;
   if (mpcc_to_remove->mpcc_bot) {

    REG_SET(MPCC_BOT_SEL[temp_mpcc->mpcc_id], 0,
      MPCC_BOT_SEL, mpcc_to_remove->mpcc_bot->mpcc_id);
   } else {

    REG_SET(MPCC_BOT_SEL[temp_mpcc->mpcc_id], 0,
      MPCC_BOT_SEL, 0xf);
    REG_UPDATE(MPCC_CONTROL[temp_mpcc->mpcc_id],
      MPCC_MODE, MPCC_BLEND_MODE_TOP_LAYER_PASSTHROUGH);
   }
  }
 }

 if (found) {

  REG_SET(MPCC_TOP_SEL[mpcc_id], 0, MPCC_TOP_SEL, 0xf);
  REG_SET(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, 0xf);
  REG_SET(MPCC_OPP_ID[mpcc_id], 0, MPCC_OPP_ID, 0xf);


  mpc10->mpcc_in_use_mask &= ~(1 << mpcc_id);
  mpcc_to_remove->dpp_id = 0xf;
  mpcc_to_remove->mpcc_bot = ((void*)0);
 } else {

  REG_SET(MPCC_TOP_SEL[mpcc_id], 0, MPCC_TOP_SEL, 0xf);
  REG_SET(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, 0xf);
  REG_SET(MPCC_OPP_ID[mpcc_id], 0, MPCC_OPP_ID, 0xf);
 }
}
