
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;
typedef enum pll_status { ____Placeholder_pll_status } pll_status ;


 scalar_t__ ANALOGIX_DP_DEBUG_CTL ;
 int PLL_LOCK ;
 int PLL_LOCKED ;
 int PLL_UNLOCKED ;
 int readl (scalar_t__) ;

enum pll_status analogix_dp_get_pll_lock_status(struct analogix_dp_device *dp)
{
 u32 reg;

 reg = readl(dp->reg_base + ANALOGIX_DP_DEBUG_CTL);
 if (reg & PLL_LOCK)
  return PLL_LOCKED;
 else
  return PLL_UNLOCKED;
}
