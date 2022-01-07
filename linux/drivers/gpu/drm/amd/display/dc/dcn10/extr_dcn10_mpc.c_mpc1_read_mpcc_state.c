
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc_state {int busy; int idle; int overlap_only; int pre_multiplied_alpha; int alpha_mode; int mode; int bot_mpcc_id; int dpp_id; int opp_id; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;


 int MPCC_ALPHA_BLND_MODE ;
 int MPCC_ALPHA_MULTIPLIED_MODE ;
 int MPCC_BLND_ACTIVE_OVERLAP_ONLY ;
 int * MPCC_BOT_SEL ;
 int MPCC_BUSY ;
 int * MPCC_CONTROL ;
 int MPCC_IDLE ;
 int MPCC_MODE ;
 int * MPCC_OPP_ID ;
 int * MPCC_STATUS ;
 int * MPCC_TOP_SEL ;
 int REG_GET (int ,int *,int *) ;
 int REG_GET_2 (int ,int ,int *,int ,int *) ;
 int REG_GET_4 (int ,int ,int *,int ,int *,int ,int *,int ,int *) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

void mpc1_read_mpcc_state(
  struct mpc *mpc,
  int mpcc_inst,
  struct mpcc_state *s)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);

 REG_GET(MPCC_OPP_ID[mpcc_inst], MPCC_OPP_ID, &s->opp_id);
 REG_GET(MPCC_TOP_SEL[mpcc_inst], MPCC_TOP_SEL, &s->dpp_id);
 REG_GET(MPCC_BOT_SEL[mpcc_inst], MPCC_BOT_SEL, &s->bot_mpcc_id);
 REG_GET_4(MPCC_CONTROL[mpcc_inst], MPCC_MODE, &s->mode,
   MPCC_ALPHA_BLND_MODE, &s->alpha_mode,
   MPCC_ALPHA_MULTIPLIED_MODE, &s->pre_multiplied_alpha,
   MPCC_BLND_ACTIVE_OVERLAP_ONLY, &s->overlap_only);
 REG_GET_2(MPCC_STATUS[mpcc_inst], MPCC_IDLE, &s->idle,
   MPCC_BUSY, &s->busy);
}
