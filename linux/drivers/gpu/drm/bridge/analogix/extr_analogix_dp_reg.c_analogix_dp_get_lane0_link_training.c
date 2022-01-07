
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_LN0_LINK_TRAINING_CTL ;
 int readl (scalar_t__) ;

u32 analogix_dp_get_lane0_link_training(struct analogix_dp_device *dp)
{
 return readl(dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL);
}
