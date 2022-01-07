
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amdgpu_encoder_atom_dig {scalar_t__ panel_mode; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_atombios_dp_link_train_info {int* dpcd; int dp_lane_count; int aux; int encoder; int dp_clock; int connector; } ;


 int ATOM_ENCODER_CMD_DP_LINK_TRAINING_START ;
 int DP_DOWNSPREAD_CTRL ;
 int DP_EDP_CONFIGURATION_SET ;
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ;
 int DP_LANE_COUNT_SET ;
 int DP_LINK_BW_SET ;
 scalar_t__ DP_PANEL_MODE_INTERNAL_DP2_MODE ;
 int DP_SET_POWER_D0 ;
 int DP_SPREAD_AMP_0_5 ;
 int DP_TRAINING_PATTERN_DISABLE ;
 int DP_TRAINING_PATTERN_SET ;
 int amdgpu_atombios_dp_set_rx_power_state (int ,int ) ;
 int amdgpu_atombios_encoder_setup_dig_encoder (int ,int ,int ) ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;
 scalar_t__ drm_dp_enhanced_frame_cap (int*) ;
 int drm_dp_link_rate_to_bw_code (int ) ;
 struct amdgpu_encoder* to_amdgpu_encoder (int ) ;

__attribute__((used)) static int
amdgpu_atombios_dp_link_train_init(struct amdgpu_atombios_dp_link_train_info *dp_info)
{
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(dp_info->encoder);
 struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
 u8 tmp;


 amdgpu_atombios_dp_set_rx_power_state(dp_info->connector, DP_SET_POWER_D0);


 if (dp_info->dpcd[3] & 0x1)
  drm_dp_dpcd_writeb(dp_info->aux,
       DP_DOWNSPREAD_CTRL, DP_SPREAD_AMP_0_5);
 else
  drm_dp_dpcd_writeb(dp_info->aux,
       DP_DOWNSPREAD_CTRL, 0);

 if (dig->panel_mode == DP_PANEL_MODE_INTERNAL_DP2_MODE)
  drm_dp_dpcd_writeb(dp_info->aux, DP_EDP_CONFIGURATION_SET, 1);


 tmp = dp_info->dp_lane_count;
 if (drm_dp_enhanced_frame_cap(dp_info->dpcd))
  tmp |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
 drm_dp_dpcd_writeb(dp_info->aux, DP_LANE_COUNT_SET, tmp);


 tmp = drm_dp_link_rate_to_bw_code(dp_info->dp_clock);
 drm_dp_dpcd_writeb(dp_info->aux, DP_LINK_BW_SET, tmp);


 amdgpu_atombios_encoder_setup_dig_encoder(dp_info->encoder,
        ATOM_ENCODER_CMD_DP_LINK_TRAINING_START, 0);


 drm_dp_dpcd_writeb(dp_info->aux,
      DP_TRAINING_PATTERN_SET,
      DP_TRAINING_PATTERN_DISABLE);

 return 0;
}
