
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_encoder {int dummy; } ;


 int DP_TRAIN_PRE_EMPH_LEVEL_0 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_1 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_2 ;
 int DP_TRAIN_PRE_EMPH_LEVEL_3 ;




 int DP_TRAIN_VOLTAGE_SWING_MASK ;

u8 intel_ddi_dp_pre_emphasis_max(struct intel_encoder *encoder, u8 voltage_swing)
{
 switch (voltage_swing & DP_TRAIN_VOLTAGE_SWING_MASK) {
 case 131:
  return DP_TRAIN_PRE_EMPH_LEVEL_3;
 case 130:
  return DP_TRAIN_PRE_EMPH_LEVEL_2;
 case 129:
  return DP_TRAIN_PRE_EMPH_LEVEL_1;
 case 128:
 default:
  return DP_TRAIN_PRE_EMPH_LEVEL_0;
 }
}
