
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_LN3_LINK_TRAINING_CTL ;
 int writel (int ,scalar_t__) ;

void analogix_dp_set_lane3_link_training(struct analogix_dp_device *dp,
      u32 training_lane)
{
 u32 reg;

 reg = training_lane;
 writel(reg, dp->reg_base + ANALOGIX_DP_LN3_LINK_TRAINING_CTL);
}
