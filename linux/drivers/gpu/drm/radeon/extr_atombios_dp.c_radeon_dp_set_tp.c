
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_dp_link_train_info {int aux; int enc_id; int dp_clock; int rdev; int encoder; int use_dpencoder; } ;


 scalar_t__ ASIC_IS_DCE4 (int ) ;
 int ATOM_DP_ACTION_TRAINING_PATTERN_SEL ;
 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN1 ;
 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN2 ;
 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN3 ;



 int DP_TRAINING_PATTERN_SET ;
 int atombios_dig_encoder_setup (int ,int,int ) ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;
 int radeon_dp_encoder_service (int ,int ,int ,int ,int) ;

__attribute__((used)) static void radeon_dp_set_tp(struct radeon_dp_link_train_info *dp_info, int tp)
{
 int rtp = 0;


 if (ASIC_IS_DCE4(dp_info->rdev) || !dp_info->use_dpencoder) {
  switch (tp) {
  case 130:
   rtp = ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN1;
   break;
  case 129:
   rtp = ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN2;
   break;
  case 128:
   rtp = ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN3;
   break;
  }
  atombios_dig_encoder_setup(dp_info->encoder, rtp, 0);
 } else {
  switch (tp) {
  case 130:
   rtp = 0;
   break;
  case 129:
   rtp = 1;
   break;
  }
  radeon_dp_encoder_service(dp_info->rdev, ATOM_DP_ACTION_TRAINING_PATTERN_SEL,
       dp_info->dp_clock, dp_info->enc_id, rtp);
 }


 drm_dp_dpcd_writeb(dp_info->aux, DP_TRAINING_PATTERN_SET, tp);
}
