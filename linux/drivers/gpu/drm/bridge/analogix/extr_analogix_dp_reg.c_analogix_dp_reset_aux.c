
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_FUNC_EN_2 ;
 int AUX_FUNC_EN_N ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void analogix_dp_reset_aux(struct analogix_dp_device *dp)
{
 u32 reg;


 reg = readl(dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
 reg |= AUX_FUNC_EN_N;
 writel(reg, dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
}
