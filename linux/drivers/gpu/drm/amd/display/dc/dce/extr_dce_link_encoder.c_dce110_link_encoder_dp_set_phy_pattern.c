
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct encoder_set_dp_phy_pattern_param {int dp_phy_pattern; int dp_panel_mode; int custom_pattern; } ;
struct dce110_link_encoder {int dummy; } ;


 int ASSERT_CRITICAL (int) ;
 struct dce110_link_encoder* TO_DCE110_LINK_ENC (struct link_encoder*) ;
 int dce110_link_encoder_set_dp_phy_pattern_training_pattern (struct link_encoder*,int) ;
 int set_dp_phy_pattern_80bit_custom (struct dce110_link_encoder*,int ) ;
 int set_dp_phy_pattern_d102 (struct dce110_link_encoder*) ;
 int set_dp_phy_pattern_hbr2_compliance_cp2520_2 (struct dce110_link_encoder*,int) ;
 int set_dp_phy_pattern_passthrough_mode (struct dce110_link_encoder*,int ) ;
 int set_dp_phy_pattern_prbs7 (struct dce110_link_encoder*) ;
 int set_dp_phy_pattern_symbol_error (struct dce110_link_encoder*) ;

void dce110_link_encoder_dp_set_phy_pattern(
 struct link_encoder *enc,
 const struct encoder_set_dp_phy_pattern_param *param)
{
 struct dce110_link_encoder *enc110 = TO_DCE110_LINK_ENC(enc);

 switch (param->dp_phy_pattern) {
 case 132:
  dce110_link_encoder_set_dp_phy_pattern_training_pattern(enc, 0);
  break;
 case 131:
  dce110_link_encoder_set_dp_phy_pattern_training_pattern(enc, 1);
  break;
 case 130:
  dce110_link_encoder_set_dp_phy_pattern_training_pattern(enc, 2);
  break;
 case 129:
  dce110_link_encoder_set_dp_phy_pattern_training_pattern(enc, 3);
  break;
 case 135:
  set_dp_phy_pattern_d102(enc110);
  break;
 case 133:
  set_dp_phy_pattern_symbol_error(enc110);
  break;
 case 134:
  set_dp_phy_pattern_prbs7(enc110);
  break;
 case 139:
  set_dp_phy_pattern_80bit_custom(
   enc110, param->custom_pattern);
  break;
 case 138:
  set_dp_phy_pattern_hbr2_compliance_cp2520_2(enc110, 1);
  break;
 case 137:
  set_dp_phy_pattern_hbr2_compliance_cp2520_2(enc110, 2);
  break;
 case 136:
  set_dp_phy_pattern_hbr2_compliance_cp2520_2(enc110, 3);
  break;
 case 128: {
  set_dp_phy_pattern_passthrough_mode(
   enc110, param->dp_panel_mode);
  break;
 }

 default:

  ASSERT_CRITICAL(0);
  break;
 }
}
