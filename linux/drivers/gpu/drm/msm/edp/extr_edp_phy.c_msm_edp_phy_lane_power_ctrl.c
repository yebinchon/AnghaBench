
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct edp_phy {scalar_t__ base; } ;


 scalar_t__ EDP_MAX_LANE ;
 scalar_t__ REG_EDP_PHY_LN_PD_CTL (scalar_t__) ;
 int edp_write (scalar_t__,scalar_t__) ;

void msm_edp_phy_lane_power_ctrl(struct edp_phy *phy, bool up, u32 max_lane)
{
 u32 i;
 u32 data;

 if (up)
  data = 0;
 else
  data = 0x7;

 for (i = 0; i < max_lane; i++)
  edp_write(phy->base + REG_EDP_PHY_LN_PD_CTL(i) , data);


 data = 0x7;
 for (i = max_lane; i < EDP_MAX_LANE; i++)
  edp_write(phy->base + REG_EDP_PHY_LN_PD_CTL(i) , data);
}
