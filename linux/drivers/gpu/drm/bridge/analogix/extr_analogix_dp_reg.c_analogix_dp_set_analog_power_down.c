
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct analogix_dp_device {int reg_base; TYPE_1__* plat_data; } ;
typedef enum analog_power_block { ____Placeholder_analog_power_block } analog_power_block ;
struct TYPE_2__ {int dev_type; } ;


 int ANALOGIX_DP_PD ;
 int ANALOGIX_DP_PHY_PD ;


 int AUX_PD ;

 int CH0_PD ;

 int CH1_PD ;

 int CH2_PD ;

 int CH3_PD ;
 int DP_ALL_PD ;
 int DP_INC_BG ;
 int DP_PHY_PD ;

 int RK_AUX_PD ;
 scalar_t__ is_rockchip (int ) ;
 int readl (int) ;
 int usleep_range (int,int) ;
 int writel (int,int) ;

void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
           enum analog_power_block block,
           bool enable)
{
 u32 reg;
 u32 phy_pd_addr = ANALOGIX_DP_PHY_PD;
 u32 mask;

 if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
  phy_pd_addr = ANALOGIX_DP_PD;

 switch (block) {
 case 133:
  if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
   mask = RK_AUX_PD;
  else
   mask = AUX_PD;

  reg = readl(dp->reg_base + phy_pd_addr);
  if (enable)
   reg |= mask;
  else
   reg &= ~mask;
  writel(reg, dp->reg_base + phy_pd_addr);
  break;
 case 132:
  mask = CH0_PD;
  reg = readl(dp->reg_base + phy_pd_addr);

  if (enable)
   reg |= mask;
  else
   reg &= ~mask;
  writel(reg, dp->reg_base + phy_pd_addr);
  break;
 case 131:
  mask = CH1_PD;
  reg = readl(dp->reg_base + phy_pd_addr);

  if (enable)
   reg |= mask;
  else
   reg &= ~mask;
  writel(reg, dp->reg_base + phy_pd_addr);
  break;
 case 130:
  mask = CH2_PD;
  reg = readl(dp->reg_base + phy_pd_addr);

  if (enable)
   reg |= mask;
  else
   reg &= ~mask;
  writel(reg, dp->reg_base + phy_pd_addr);
  break;
 case 129:
  mask = CH3_PD;
  reg = readl(dp->reg_base + phy_pd_addr);

  if (enable)
   reg |= mask;
  else
   reg &= ~mask;
  writel(reg, dp->reg_base + phy_pd_addr);
  break;
 case 134:





  if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
   mask = DP_INC_BG;
  else
   mask = DP_PHY_PD;

  reg = readl(dp->reg_base + phy_pd_addr);
  if (enable)
   reg |= mask;
  else
   reg &= ~mask;

  writel(reg, dp->reg_base + phy_pd_addr);
  if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
   usleep_range(10, 15);
  break;
 case 128:
  if (enable) {
   reg = DP_ALL_PD;
   writel(reg, dp->reg_base + phy_pd_addr);
  } else {
   reg = DP_ALL_PD;
   writel(reg, dp->reg_base + phy_pd_addr);
   usleep_range(10, 15);
   reg &= ~DP_INC_BG;
   writel(reg, dp->reg_base + phy_pd_addr);
   usleep_range(10, 15);

   writel(0x00, dp->reg_base + phy_pd_addr);
  }
  break;
 default:
  break;
 }
}
