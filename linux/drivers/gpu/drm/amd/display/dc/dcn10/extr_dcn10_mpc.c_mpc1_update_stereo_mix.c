
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcc_sm_cfg {int force_next_field_polarity; int force_next_frame_porlarity; int field_alt; int frame_alt; int sm_mode; int enable; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;


 int * MPCC_SM_CONTROL ;
 int MPCC_SM_EN ;
 int MPCC_SM_FIELD_ALT ;
 int MPCC_SM_FORCE_NEXT_FRAME_POL ;
 int MPCC_SM_FORCE_NEXT_TOP_POL ;
 int MPCC_SM_FRAME_ALT ;
 int MPCC_SM_MODE ;
 int REG_UPDATE_6 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct dcn10_mpc* TO_DCN10_MPC (struct mpc*) ;

void mpc1_update_stereo_mix(
 struct mpc *mpc,
 struct mpcc_sm_cfg *sm_cfg,
 int mpcc_id)
{
 struct dcn10_mpc *mpc10 = TO_DCN10_MPC(mpc);

 REG_UPDATE_6(MPCC_SM_CONTROL[mpcc_id],
   MPCC_SM_EN, sm_cfg->enable,
   MPCC_SM_MODE, sm_cfg->sm_mode,
   MPCC_SM_FRAME_ALT, sm_cfg->frame_alt,
   MPCC_SM_FIELD_ALT, sm_cfg->field_alt,
   MPCC_SM_FORCE_NEXT_FRAME_POL, sm_cfg->force_next_frame_porlarity,
   MPCC_SM_FORCE_NEXT_TOP_POL, sm_cfg->force_next_field_polarity);
}
