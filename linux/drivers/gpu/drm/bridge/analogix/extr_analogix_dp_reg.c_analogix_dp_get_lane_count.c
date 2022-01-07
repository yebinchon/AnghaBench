
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_LANE_COUNT_SET ;
 int readl (scalar_t__) ;

void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
{
 u32 reg;

 reg = readl(dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
 *count = reg;
}
