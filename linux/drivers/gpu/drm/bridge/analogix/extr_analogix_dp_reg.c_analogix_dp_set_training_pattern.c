
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;
typedef enum pattern_set { ____Placeholder_pattern_set } pattern_set ;


 scalar_t__ ANALOGIX_DP_TRAINING_PTN_SET ;


 int LINK_QUAL_PATTERN_SET_D10_2 ;
 int LINK_QUAL_PATTERN_SET_DISABLE ;
 int LINK_QUAL_PATTERN_SET_PRBS7 ;

 int SCRAMBLING_DISABLE ;
 int SCRAMBLING_ENABLE ;
 int SW_TRAINING_PATTERN_SET_NORMAL ;
 int SW_TRAINING_PATTERN_SET_PTN1 ;
 int SW_TRAINING_PATTERN_SET_PTN2 ;


 int writel (int,scalar_t__) ;

void analogix_dp_set_training_pattern(struct analogix_dp_device *dp,
          enum pattern_set pattern)
{
 u32 reg;

 switch (pattern) {
 case 130:
  reg = SCRAMBLING_ENABLE | LINK_QUAL_PATTERN_SET_PRBS7;
  writel(reg, dp->reg_base + ANALOGIX_DP_TRAINING_PTN_SET);
  break;
 case 132:
  reg = SCRAMBLING_ENABLE | LINK_QUAL_PATTERN_SET_D10_2;
  writel(reg, dp->reg_base + ANALOGIX_DP_TRAINING_PTN_SET);
  break;
 case 129:
  reg = SCRAMBLING_DISABLE | SW_TRAINING_PATTERN_SET_PTN1;
  writel(reg, dp->reg_base + ANALOGIX_DP_TRAINING_PTN_SET);
  break;
 case 128:
  reg = SCRAMBLING_DISABLE | SW_TRAINING_PATTERN_SET_PTN2;
  writel(reg, dp->reg_base + ANALOGIX_DP_TRAINING_PTN_SET);
  break;
 case 131:
  reg = SCRAMBLING_ENABLE |
   LINK_QUAL_PATTERN_SET_DISABLE |
   SW_TRAINING_PATTERN_SET_NORMAL;
  writel(reg, dp->reg_base + ANALOGIX_DP_TRAINING_PTN_SET);
  break;
 default:
  break;
 }
}
