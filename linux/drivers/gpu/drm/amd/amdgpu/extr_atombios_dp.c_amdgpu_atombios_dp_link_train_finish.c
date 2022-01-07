
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_atombios_dp_link_train_info {int encoder; int aux; } ;


 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE ;
 int DP_TRAINING_PATTERN_DISABLE ;
 int DP_TRAINING_PATTERN_SET ;
 int amdgpu_atombios_encoder_setup_dig_encoder (int ,int ,int ) ;
 int drm_dp_dpcd_writeb (int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
amdgpu_atombios_dp_link_train_finish(struct amdgpu_atombios_dp_link_train_info *dp_info)
{
 udelay(400);


 drm_dp_dpcd_writeb(dp_info->aux,
      DP_TRAINING_PATTERN_SET,
      DP_TRAINING_PATTERN_DISABLE);


 amdgpu_atombios_encoder_setup_dig_encoder(dp_info->encoder,
        ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE, 0);

 return 0;
}
