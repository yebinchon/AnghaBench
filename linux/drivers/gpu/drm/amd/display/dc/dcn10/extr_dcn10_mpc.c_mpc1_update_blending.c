
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc_blnd_cfg {int black_color; int global_gain; int global_alpha; int overlap_only; int pre_multiplied_alpha; int alpha_mode; } ;
struct mpcc {struct mpcc_blnd_cfg blnd_cfg; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;


 int MPCC_ALPHA_BLND_MODE ;
 int MPCC_ALPHA_MULTIPLIED_MODE ;
 int MPCC_BLND_ACTIVE_OVERLAP_ONLY ;
 int * MPCC_CONTROL ;
 int MPCC_GLOBAL_ALPHA ;
 int MPCC_GLOBAL_GAIN ;
 int REG_UPDATE_5 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;
 struct mpcc* mpc1_get_mpcc (struct mpc*,int) ;
 int mpc1_set_bg_color (struct mpc*,int *,int) ;

__attribute__((used)) static void mpc1_update_blending(
 struct mpc *mpc,
 struct mpcc_blnd_cfg *blnd_cfg,
 int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);
 struct mpcc *mpcc = mpc1_get_mpcc(mpc, mpcc_id);

 REG_UPDATE_5(MPCC_CONTROL[mpcc_id],
   MPCC_ALPHA_BLND_MODE, blnd_cfg->alpha_mode,
   MPCC_ALPHA_MULTIPLIED_MODE, blnd_cfg->pre_multiplied_alpha,
   MPCC_BLND_ACTIVE_OVERLAP_ONLY, blnd_cfg->overlap_only,
   MPCC_GLOBAL_ALPHA, blnd_cfg->global_alpha,
   MPCC_GLOBAL_GAIN, blnd_cfg->global_gain);

 mpc1_set_bg_color(mpc, &blnd_cfg->black_color, mpcc_id);
 mpcc->blnd_cfg = *blnd_cfg;
}
