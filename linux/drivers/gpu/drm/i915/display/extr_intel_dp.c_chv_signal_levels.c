
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
 int chv_set_phy_signal_level (struct intel_encoder*,int,int,int) ;
 TYPE_1__* dp_to_dig_port (struct intel_dp*) ;

__attribute__((used)) static u32 chv_signal_levels(struct intel_dp *intel_dp)
{
 struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 u32 deemph_reg_value, margin_reg_value;
 bool uniq_trans_scale = 0;
 u8 train_set = intel_dp->train_set[0];

 switch (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) {
 case 135:
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   deemph_reg_value = 128;
   margin_reg_value = 52;
   break;
  case 130:
   deemph_reg_value = 128;
   margin_reg_value = 77;
   break;
  case 129:
   deemph_reg_value = 128;
   margin_reg_value = 102;
   break;
  case 128:
   deemph_reg_value = 128;
   margin_reg_value = 154;
   uniq_trans_scale = 1;
   break;
  default:
   return 0;
  }
  break;
 case 134:
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   deemph_reg_value = 85;
   margin_reg_value = 78;
   break;
  case 130:
   deemph_reg_value = 85;
   margin_reg_value = 116;
   break;
  case 129:
   deemph_reg_value = 85;
   margin_reg_value = 154;
   break;
  default:
   return 0;
  }
  break;
 case 133:
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   deemph_reg_value = 64;
   margin_reg_value = 104;
   break;
  case 130:
   deemph_reg_value = 64;
   margin_reg_value = 154;
   break;
  default:
   return 0;
  }
  break;
 case 132:
  switch (train_set & DP_TRAIN_VOLTAGE_SWING_MASK) {
  case 131:
   deemph_reg_value = 43;
   margin_reg_value = 154;
   break;
  default:
   return 0;
  }
  break;
 default:
  return 0;
 }

 chv_set_phy_signal_level(encoder, deemph_reg_value,
     margin_reg_value, uniq_trans_scale);

 return 0;
}
