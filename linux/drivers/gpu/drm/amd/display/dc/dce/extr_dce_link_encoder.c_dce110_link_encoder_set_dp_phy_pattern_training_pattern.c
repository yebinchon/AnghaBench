
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct link_encoder {int dummy; } ;
struct dce110_link_encoder {int dummy; } ;


 int DP_DPHY_TRAINING_PATTERN_SEL ;
 int REG_WRITE (int ,int ) ;
 struct dce110_link_encoder* TO_DCE110_LINK_ENC (struct link_encoder*) ;
 int disable_prbs_mode (struct dce110_link_encoder*) ;
 int enable_phy_bypass_mode (struct dce110_link_encoder*,int) ;
 int set_link_training_complete (struct dce110_link_encoder*,int) ;

void dce110_link_encoder_set_dp_phy_pattern_training_pattern(
 struct link_encoder *enc,
 uint32_t index)
{
 struct dce110_link_encoder *enc110 = TO_DCE110_LINK_ENC(enc);


 REG_WRITE(DP_DPHY_TRAINING_PATTERN_SEL, index);



 set_link_training_complete(enc110, 0);



 enable_phy_bypass_mode(enc110, 0);


 disable_prbs_mode(enc110);
}
