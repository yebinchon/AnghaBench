
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_atombios_dp_link_train_info {int aux; int encoder; } ;


 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN1 ;
 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN2 ;
 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_PATTERN3 ;



 int DP_TRAINING_PATTERN_SET ;
 int amdgpu_atombios_encoder_setup_dig_encoder (int ,int,int ) ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;

__attribute__((used)) static void
amdgpu_atombios_dp_set_tp(struct amdgpu_atombios_dp_link_train_info *dp_info, int tp)
{
 int rtp = 0;


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
 amdgpu_atombios_encoder_setup_dig_encoder(dp_info->encoder, rtp, 0);


 drm_dp_dpcd_writeb(dp_info->aux, DP_TRAINING_PATTERN_SET, tp);
}
