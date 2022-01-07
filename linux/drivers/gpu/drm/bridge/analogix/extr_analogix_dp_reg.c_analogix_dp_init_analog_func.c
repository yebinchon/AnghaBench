
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; int dev; } ;


 scalar_t__ ANALOGIX_DP_COMMON_INT_STA_1 ;
 scalar_t__ ANALOGIX_DP_DEBUG_CTL ;
 scalar_t__ ANALOGIX_DP_FUNC_EN_2 ;
 int AUX_FUNC_EN_N ;
 int DP_TIMEOUT_LOOP_COUNT ;
 int ETIMEDOUT ;
 int F_PLL_LOCK ;
 int LS_CLK_DOMAIN_FUNC_EN_N ;
 int PLL_LOCK_CHG ;
 int PLL_LOCK_CTRL ;
 scalar_t__ PLL_UNLOCKED ;
 int POWER_ALL ;
 int SERDES_FIFO_FUNC_EN_N ;
 scalar_t__ analogix_dp_get_pll_lock_status (struct analogix_dp_device*) ;
 int analogix_dp_set_analog_power_down (struct analogix_dp_device*,int ,int ) ;
 int analogix_dp_set_pll_power_down (struct analogix_dp_device*,int ) ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

int analogix_dp_init_analog_func(struct analogix_dp_device *dp)
{
 u32 reg;
 int timeout_loop = 0;

 analogix_dp_set_analog_power_down(dp, POWER_ALL, 0);

 reg = PLL_LOCK_CHG;
 writel(reg, dp->reg_base + ANALOGIX_DP_COMMON_INT_STA_1);

 reg = readl(dp->reg_base + ANALOGIX_DP_DEBUG_CTL);
 reg &= ~(F_PLL_LOCK | PLL_LOCK_CTRL);
 writel(reg, dp->reg_base + ANALOGIX_DP_DEBUG_CTL);


 if (analogix_dp_get_pll_lock_status(dp) == PLL_UNLOCKED) {
  analogix_dp_set_pll_power_down(dp, 0);

  while (analogix_dp_get_pll_lock_status(dp) == PLL_UNLOCKED) {
   timeout_loop++;
   if (DP_TIMEOUT_LOOP_COUNT < timeout_loop) {
    dev_err(dp->dev, "failed to get pll lock status\n");
    return -ETIMEDOUT;
   }
   usleep_range(10, 20);
  }
 }


 reg = readl(dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
 reg &= ~(SERDES_FIFO_FUNC_EN_N | LS_CLK_DOMAIN_FUNC_EN_N
  | AUX_FUNC_EN_N);
 writel(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
 return 0;
}
