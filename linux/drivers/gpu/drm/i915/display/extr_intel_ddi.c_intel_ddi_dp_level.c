
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct intel_dp {int* train_set; } ;


 int DP_TRAIN_PRE_EMPHASIS_MASK ;
 int DP_TRAIN_VOLTAGE_SWING_MASK ;
 int translate_signal_level (int) ;

__attribute__((used)) static u32 intel_ddi_dp_level(struct intel_dp *intel_dp)
{
 u8 train_set = intel_dp->train_set[0];
 int signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
      DP_TRAIN_PRE_EMPHASIS_MASK);

 return translate_signal_level(signal_levels);
}
