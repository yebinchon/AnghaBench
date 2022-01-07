
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intel_encoder {int dummy; } ;
struct intel_dp {int* train_set; } ;
struct TYPE_2__ {struct intel_encoder base; } ;


 int DP_TRAIN_PRE_EMPHASIS_MASK ;
 int DP_TRAIN_VOLTAGE_SWING_MASK ;
 TYPE_1__* dp_to_dig_port (struct intel_dp*) ;
 int vlv_set_phy_signal_level (struct intel_encoder*,unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static u32 vlv_signal_levels(struct intel_dp *intel_dp)
{
 struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 unsigned long demph_reg_value, preemph_reg_value,
  uniqtranscale_reg_value;
 u8 train_set = intel_dp->train_set[0];

 switch (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) {
 case 135:
  preemph_reg_value = 0x0004000;
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   demph_reg_value = 0x2B405555;
   uniqtranscale_reg_value = 0x552AB83A;
   break;
  case 130:
   demph_reg_value = 0x2B404040;
   uniqtranscale_reg_value = 0x5548B83A;
   break;
  case 129:
   demph_reg_value = 0x2B245555;
   uniqtranscale_reg_value = 0x5560B83A;
   break;
  case 128:
   demph_reg_value = 0x2B405555;
   uniqtranscale_reg_value = 0x5598DA3A;
   break;
  default:
   return 0;
  }
  break;
 case 134:
  preemph_reg_value = 0x0002000;
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   demph_reg_value = 0x2B404040;
   uniqtranscale_reg_value = 0x5552B83A;
   break;
  case 130:
   demph_reg_value = 0x2B404848;
   uniqtranscale_reg_value = 0x5580B83A;
   break;
  case 129:
   demph_reg_value = 0x2B404040;
   uniqtranscale_reg_value = 0x55ADDA3A;
   break;
  default:
   return 0;
  }
  break;
 case 133:
  preemph_reg_value = 0x0000000;
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   demph_reg_value = 0x2B305555;
   uniqtranscale_reg_value = 0x5570B83A;
   break;
  case 130:
   demph_reg_value = 0x2B2B4040;
   uniqtranscale_reg_value = 0x55ADDA3A;
   break;
  default:
   return 0;
  }
  break;
 case 132:
  preemph_reg_value = 0x0006000;
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   demph_reg_value = 0x1B405555;
   uniqtranscale_reg_value = 0x55ADDA3A;
   break;
  default:
   return 0;
  }
  break;
 default:
  return 0;
 }

 vlv_set_phy_signal_level(encoder, demph_reg_value, preemph_reg_value,
     uniqtranscale_reg_value, 0);

 return 0;
}
