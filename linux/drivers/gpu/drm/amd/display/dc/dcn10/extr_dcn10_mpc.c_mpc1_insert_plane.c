
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpcc_sm_cfg {int dummy; } ;
struct mpcc_blnd_cfg {int dummy; } ;
struct mpcc {int dpp_id; int mpcc_id; struct mpcc_sm_cfg sm_cfg; struct mpcc* mpcc_bot; } ;
struct mpc_tree {int opp_id; struct mpcc* opp_list; } ;
struct mpc {TYPE_1__* funcs; } ;
struct dcn10_mpc {int num_mpcc; int mpcc_in_use_mask; } ;
struct TYPE_2__ {int (* update_blending ) (struct mpc*,struct mpcc_blnd_cfg*,int) ;} ;


 int ASSERT (int) ;
 int MPCC_BLEND_MODE_TOP_BOT_BLENDING ;
 int MPCC_BLEND_MODE_TOP_LAYER_ONLY ;
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
 struct mpcc* mpc1_get_mpcc (struct mpc*,int) ;
 int mpc1_update_stereo_mix (struct mpc*,struct mpcc_sm_cfg*,int) ;
 int stub1 (struct mpc*,struct mpcc_blnd_cfg*,int) ;

struct mpcc *mpc1_insert_plane(
 struct mpc *mpc,
 struct mpc_tree *tree,
 struct mpcc_blnd_cfg *blnd_cfg,
 struct mpcc_sm_cfg *sm_cfg,
 struct mpcc *insert_above_mpcc,
 int dpp_id,
 int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);
 struct mpcc *new_mpcc = ((void*)0);


 ASSERT(mpcc_id < mpc10->num_mpcc);
 ASSERT(!(mpc10->mpcc_in_use_mask & 1 << mpcc_id));

 if (insert_above_mpcc) {

  struct mpcc *temp_mpcc = tree->opp_list;

  while (temp_mpcc && temp_mpcc->mpcc_bot != insert_above_mpcc)
   temp_mpcc = temp_mpcc->mpcc_bot;
  if (temp_mpcc == ((void*)0))
   return ((void*)0);
 }


 new_mpcc = mpc1_get_mpcc(mpc, mpcc_id);
 new_mpcc->dpp_id = dpp_id;


 if (insert_above_mpcc) {
  new_mpcc->mpcc_bot = insert_above_mpcc;
  REG_SET(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, insert_above_mpcc->mpcc_id);
  REG_UPDATE(MPCC_CONTROL[mpcc_id], MPCC_MODE, MPCC_BLEND_MODE_TOP_BOT_BLENDING);
 } else {
  new_mpcc->mpcc_bot = ((void*)0);
  REG_SET(MPCC_BOT_SEL[mpcc_id], 0, MPCC_BOT_SEL, 0xf);
  REG_UPDATE(MPCC_CONTROL[mpcc_id], MPCC_MODE, MPCC_BLEND_MODE_TOP_LAYER_ONLY);
 }
 REG_SET(MPCC_TOP_SEL[mpcc_id], 0, MPCC_TOP_SEL, dpp_id);
 REG_SET(MPCC_OPP_ID[mpcc_id], 0, MPCC_OPP_ID, tree->opp_id);


 if (tree->opp_list == insert_above_mpcc) {

  tree->opp_list = new_mpcc;
  REG_UPDATE(MUX[tree->opp_id], MPC_OUT_MUX, mpcc_id);
 } else {

  struct mpcc *temp_mpcc = tree->opp_list;

  while (temp_mpcc && temp_mpcc->mpcc_bot != insert_above_mpcc)
   temp_mpcc = temp_mpcc->mpcc_bot;
  if (temp_mpcc && temp_mpcc->mpcc_bot == insert_above_mpcc) {
   REG_SET(MPCC_BOT_SEL[temp_mpcc->mpcc_id], 0, MPCC_BOT_SEL, mpcc_id);
   temp_mpcc->mpcc_bot = new_mpcc;
   if (!insert_above_mpcc)
    REG_UPDATE(MPCC_CONTROL[temp_mpcc->mpcc_id],
      MPCC_MODE, MPCC_BLEND_MODE_TOP_BOT_BLENDING);
  }
 }


 mpc->funcs->update_blending(mpc, blnd_cfg, mpcc_id);


 if (sm_cfg != ((void*)0)) {
  new_mpcc->sm_cfg = *sm_cfg;
  mpc1_update_stereo_mix(mpc, sm_cfg, mpcc_id);
 }


 mpc10->mpcc_in_use_mask |= 1 << mpcc_id;

 return new_mpcc;
}
