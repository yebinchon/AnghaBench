
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_PHY_TEST ;
 int MACRO_RST ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;

void analogix_dp_reset_macro(struct analogix_dp_device *dp)
{
 u32 reg;

 reg = readl(dp->reg_base + ANALOGIX_DP_PHY_TEST);
 reg |= MACRO_RST;
 writel(reg, dp->reg_base + ANALOGIX_DP_PHY_TEST);


 usleep_range(10, 20);

 reg &= ~MACRO_RST;
 writel(reg, dp->reg_base + ANALOGIX_DP_PHY_TEST);
}
