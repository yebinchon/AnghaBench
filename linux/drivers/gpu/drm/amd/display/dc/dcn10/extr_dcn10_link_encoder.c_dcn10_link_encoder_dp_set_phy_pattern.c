
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct encoder_set_dp_phy_pattern_param {int dp_phy_pattern; int dp_panel_mode; int custom_pattern; } ;
struct dcn10_link_encoder {int dummy; } ;


 int ASSERT_CRITICAL (int) ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;
 int dcn10_link_encoder_set_dp_phy_pattern_training_pattern (struct link_encoder*,int) ;
 int set_dp_phy_pattern_80bit_custom (struct dcn10_link_encoder*,int ) ;
 int set_dp_phy_pattern_d102 (struct dcn10_link_encoder*) ;
 int set_dp_phy_pattern_hbr2_compliance_cp2520_2 (struct dcn10_link_encoder*,int) ;
 int set_dp_phy_pattern_passthrough_mode (struct dcn10_link_encoder*,int ) ;
 int set_dp_phy_pattern_prbs7 (struct dcn10_link_encoder*) ;
 int set_dp_phy_pattern_symbol_error (struct dcn10_link_encoder*) ;

void dcn10_link_encoder_dp_set_phy_pattern(
 struct link_encoder *enc,
 const struct encoder_set_dp_phy_pattern_param *param)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);

 switch (param->dp_phy_pattern) {
 case 132:
  dcn10_link_encoder_set_dp_phy_pattern_training_pattern(enc, 0);
  break;
 case 131:
  dcn10_link_encoder_set_dp_phy_pattern_training_pattern(enc, 1);
  break;
 case 130:
  dcn10_link_encoder_set_dp_phy_pattern_training_pattern(enc, 2);
  break;
 case 129:
  dcn10_link_encoder_set_dp_phy_pattern_training_pattern(enc, 3);
  break;
 case 135:
  set_dp_phy_pattern_d102(enc10);
  break;
 case 133:
  set_dp_phy_pattern_symbol_error(enc10);
  break;
 case 134:
  set_dp_phy_pattern_prbs7(enc10);
  break;
 case 139:
  set_dp_phy_pattern_80bit_custom(
   enc10, param->custom_pattern);
  break;
 case 138:
  set_dp_phy_pattern_hbr2_compliance_cp2520_2(enc10, 1);
  break;
 case 137:
  set_dp_phy_pattern_hbr2_compliance_cp2520_2(enc10, 2);
  break;
 case 136:
  set_dp_phy_pattern_hbr2_compliance_cp2520_2(enc10, 3);
  break;
 case 128: {
  set_dp_phy_pattern_passthrough_mode(
   enc10, param->dp_panel_mode);
  break;
 }

 default:

  ASSERT_CRITICAL(0);
  break;
 }
}
