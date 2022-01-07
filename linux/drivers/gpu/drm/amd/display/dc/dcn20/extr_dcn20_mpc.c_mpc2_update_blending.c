
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc_blnd_cfg {int black_color; int bottom_outside_gain; int bottom_inside_gain; int top_gain; int bottom_gain_mode; int background_color_bpc; int global_gain; int global_alpha; int overlap_only; int pre_multiplied_alpha; int alpha_mode; } ;
struct mpcc {struct mpcc_blnd_cfg blnd_cfg; } ;
struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;


 int MPCC_ALPHA_BLND_MODE ;
 int MPCC_ALPHA_MULTIPLIED_MODE ;
 int MPCC_BG_BPC ;
 int MPCC_BLND_ACTIVE_OVERLAP_ONLY ;
 int * MPCC_BOT_GAIN_INSIDE ;
 int MPCC_BOT_GAIN_MODE ;
 int * MPCC_BOT_GAIN_OUTSIDE ;
 int * MPCC_CONTROL ;
 int MPCC_GLOBAL_ALPHA ;
 int MPCC_GLOBAL_GAIN ;
 int * MPCC_TOP_GAIN ;
 int REG_SET (int ,int ,int *,int ) ;
 int REG_UPDATE_7 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;
 struct mpcc* mpc1_get_mpcc (struct mpc*,int) ;
 int mpc1_set_bg_color (struct mpc*,int *,int) ;

void mpc2_update_blending(
 struct mpc *mpc,
 struct mpcc_blnd_cfg *blnd_cfg,
 int mpcc_id)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);

 struct mpcc *mpcc = mpc1_get_mpcc(mpc, mpcc_id);

 REG_UPDATE_7(MPCC_CONTROL[mpcc_id],
   MPCC_ALPHA_BLND_MODE, blnd_cfg->alpha_mode,
   MPCC_ALPHA_MULTIPLIED_MODE, blnd_cfg->pre_multiplied_alpha,
   MPCC_BLND_ACTIVE_OVERLAP_ONLY, blnd_cfg->overlap_only,
   MPCC_GLOBAL_ALPHA, blnd_cfg->global_alpha,
   MPCC_GLOBAL_GAIN, blnd_cfg->global_gain,
   MPCC_BG_BPC, blnd_cfg->background_color_bpc,
   MPCC_BOT_GAIN_MODE, blnd_cfg->bottom_gain_mode);

 REG_SET(MPCC_TOP_GAIN[mpcc_id], 0, MPCC_TOP_GAIN, blnd_cfg->top_gain);
 REG_SET(MPCC_BOT_GAIN_INSIDE[mpcc_id], 0, MPCC_BOT_GAIN_INSIDE, blnd_cfg->bottom_inside_gain);
 REG_SET(MPCC_BOT_GAIN_OUTSIDE[mpcc_id], 0, MPCC_BOT_GAIN_OUTSIDE, blnd_cfg->bottom_outside_gain);

 mpc1_set_bg_color(mpc, &blnd_cfg->black_color, mpcc_id);
 mpcc->blnd_cfg = *blnd_cfg;
}
