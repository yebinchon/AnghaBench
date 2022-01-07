
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; TYPE_1__* plat_data; } ;
struct TYPE_2__ {int dev_type; } ;


 scalar_t__ ANALOGIX_DP_AUX_CH_DEFER_CTL ;
 scalar_t__ ANALOGIX_DP_AUX_HW_RETRY_CTL ;
 scalar_t__ ANALOGIX_DP_FUNC_EN_2 ;
 scalar_t__ ANALOGIX_DP_INT_STA ;
 int AUX_BIT_PERIOD_EXPECTED_DELAY (int) ;
 int AUX_BLOCK ;
 int AUX_ERR ;
 int AUX_FUNC_EN_N ;
 int AUX_HW_RETRY_COUNT_SEL (int ) ;
 int AUX_HW_RETRY_INTERVAL_600_MICROSECONDS ;
 int DEFER_COUNT (int) ;
 int DEFER_CTRL_EN ;
 int RPLY_RECEIV ;
 int analogix_dp_reset_aux (struct analogix_dp_device*) ;
 int analogix_dp_set_analog_power_down (struct analogix_dp_device*,int ,int) ;
 scalar_t__ is_rockchip (int ) ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

void analogix_dp_init_aux(struct analogix_dp_device *dp)
{
 u32 reg;


 reg = RPLY_RECEIV | AUX_ERR;
 writel(reg, dp->reg_base + ANALOGIX_DP_INT_STA);

 analogix_dp_set_analog_power_down(dp, AUX_BLOCK, 1);
 usleep_range(10, 11);
 analogix_dp_set_analog_power_down(dp, AUX_BLOCK, 0);

 analogix_dp_reset_aux(dp);


 if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
  reg = 0;
 else
  reg = AUX_BIT_PERIOD_EXPECTED_DELAY(3);


 reg |= AUX_HW_RETRY_COUNT_SEL(0) |
        AUX_HW_RETRY_INTERVAL_600_MICROSECONDS;

 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_HW_RETRY_CTL);


 reg = DEFER_CTRL_EN | DEFER_COUNT(1);
 writel(reg, dp->reg_base + ANALOGIX_DP_AUX_CH_DEFER_CTL);


 reg = readl(dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
 reg &= ~AUX_FUNC_EN_N;
 writel(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
}
