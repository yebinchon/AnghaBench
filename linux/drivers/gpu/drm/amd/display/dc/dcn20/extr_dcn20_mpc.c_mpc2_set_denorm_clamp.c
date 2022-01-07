
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_denorm_clamp {int clamp_min_b_cb; int clamp_max_b_cb; int clamp_min_g_y; int clamp_max_g_y; int clamp_min_r_cr; int clamp_max_r_cr; } ;
struct mpc {int dummy; } ;
struct dcn20_mpc {int dummy; } ;


 int * DENORM_CLAMP_B_CB ;
 int * DENORM_CLAMP_G_Y ;
 int * DENORM_CONTROL ;
 int MPC_OUT_DENORM_CLAMP_MAX_B_CB ;
 int MPC_OUT_DENORM_CLAMP_MAX_G_Y ;
 int MPC_OUT_DENORM_CLAMP_MAX_R_CR ;
 int MPC_OUT_DENORM_CLAMP_MIN_B_CB ;
 int MPC_OUT_DENORM_CLAMP_MIN_G_Y ;
 int MPC_OUT_DENORM_CLAMP_MIN_R_CR ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;

void mpc2_set_denorm_clamp(
  struct mpc *mpc,
  int opp_id,
  struct mpc_denorm_clamp denorm_clamp)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);

 REG_UPDATE_2(DENORM_CONTROL[opp_id],
   MPC_OUT_DENORM_CLAMP_MAX_R_CR, denorm_clamp.clamp_max_r_cr,
   MPC_OUT_DENORM_CLAMP_MIN_R_CR, denorm_clamp.clamp_min_r_cr);
 REG_UPDATE_2(DENORM_CLAMP_G_Y[opp_id],
   MPC_OUT_DENORM_CLAMP_MAX_G_Y, denorm_clamp.clamp_max_g_y,
   MPC_OUT_DENORM_CLAMP_MIN_G_Y, denorm_clamp.clamp_min_g_y);
 REG_UPDATE_2(DENORM_CLAMP_B_CB[opp_id],
   MPC_OUT_DENORM_CLAMP_MAX_B_CB, denorm_clamp.clamp_max_b_cb,
   MPC_OUT_DENORM_CLAMP_MIN_B_CB, denorm_clamp.clamp_min_b_cb);
}
