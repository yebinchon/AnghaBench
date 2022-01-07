
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; scalar_t__ hpd_gpiod; } ;


 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_4 ;
 scalar_t__ ANALOGIX_DP_INT_STA ;
 int HOTPLUG_CHG ;
 int HPD_LOST ;
 int INT_HPD ;
 int PLUG ;
 int writel (int,scalar_t__) ;

void analogix_dp_clear_hotplug_interrupts(struct analogix_dp_device *dp)
{
 u32 reg;

 if (dp->hpd_gpiod)
  return;

 reg = HOTPLUG_CHG | HPD_LOST | PLUG;
 writel(reg, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_4);

 reg = INT_HPD;
 writel(reg, dp->reg_base + ANALOGIX_DP_INT_STA);
}
