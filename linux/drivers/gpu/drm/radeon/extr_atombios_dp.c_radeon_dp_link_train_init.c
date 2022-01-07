
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_encoder_atom_dig {scalar_t__ panel_mode; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_dp_link_train_info {int* dpcd; int dp_lane_count; int aux; int enc_id; int dp_clock; int rdev; int encoder; int use_dpencoder; int connector; } ;


 scalar_t__ ASIC_IS_DCE4 (int ) ;
 int ATOM_DP_ACTION_TRAINING_START ;
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
 int atombios_dig_encoder_setup (int ,int ,int ) ;
 int drm_dp_dpcd_writeb (int ,int ,int) ;
 scalar_t__ drm_dp_enhanced_frame_cap (int*) ;
 int drm_dp_link_rate_to_bw_code (int ) ;
 int radeon_dp_encoder_service (int ,int ,int ,int ,int ) ;
 int radeon_dp_set_rx_power_state (int ,int ) ;
 struct radeon_encoder* to_radeon_encoder (int ) ;

__attribute__((used)) static int radeon_dp_link_train_init(struct radeon_dp_link_train_info *dp_info)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(dp_info->encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 u8 tmp;


 radeon_dp_set_rx_power_state(dp_info->connector, DP_SET_POWER_D0);


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


 if (ASIC_IS_DCE4(dp_info->rdev) || !dp_info->use_dpencoder)
  atombios_dig_encoder_setup(dp_info->encoder,
        ATOM_ENCODER_CMD_DP_LINK_TRAINING_START, 0);
 else
  radeon_dp_encoder_service(dp_info->rdev, ATOM_DP_ACTION_TRAINING_START,
       dp_info->dp_clock, dp_info->enc_id, 0);


 drm_dp_dpcd_writeb(dp_info->aux,
      DP_TRAINING_PATTERN_SET,
      DP_TRAINING_PATTERN_DISABLE);

 return 0;
}
