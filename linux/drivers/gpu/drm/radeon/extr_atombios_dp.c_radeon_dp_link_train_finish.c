
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_dp_link_train_info {int enc_id; int dp_clock; int rdev; int encoder; int use_dpencoder; int aux; } ;


 scalar_t__ ASIC_IS_DCE4 (int ) ;
 int ATOM_DP_ACTION_TRAINING_COMPLETE ;
 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE ;
 int DP_TRAINING_PATTERN_DISABLE ;
 int DP_TRAINING_PATTERN_SET ;
 int atombios_dig_encoder_setup (int ,int ,int ) ;
 int drm_dp_dpcd_writeb (int ,int ,int ) ;
 int radeon_dp_encoder_service (int ,int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int radeon_dp_link_train_finish(struct radeon_dp_link_train_info *dp_info)
{
 udelay(400);


 drm_dp_dpcd_writeb(dp_info->aux,
      DP_TRAINING_PATTERN_SET,
      DP_TRAINING_PATTERN_DISABLE);


 if (ASIC_IS_DCE4(dp_info->rdev) || !dp_info->use_dpencoder)
  atombios_dig_encoder_setup(dp_info->encoder,
        ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE, 0);
 else
  radeon_dp_encoder_service(dp_info->rdev, ATOM_DP_ACTION_TRAINING_COMPLETE,
       dp_info->dp_clock, dp_info->enc_id, 0);

 return 0;
}
