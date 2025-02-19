
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sun4i_tmds {TYPE_1__* hdmi; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int EINVAL ;
 scalar_t__ SUN4I_HDMI_PLL_DBG0_REG ;
 int SUN4I_HDMI_PLL_DBG0_TMDS_PARENT (int) ;
 int SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_MASK ;
 struct sun4i_tmds* hw_to_tmds (struct clk_hw*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4i_tmds_set_parent(struct clk_hw *hw, u8 index)
{
 struct sun4i_tmds *tmds = hw_to_tmds(hw);
 u32 reg;

 if (index > 1)
  return -EINVAL;

 reg = readl(tmds->hdmi->base + SUN4I_HDMI_PLL_DBG0_REG);
 reg &= ~SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_MASK;
 writel(reg | SUN4I_HDMI_PLL_DBG0_TMDS_PARENT(index),
        tmds->hdmi->base + SUN4I_HDMI_PLL_DBG0_REG);

 return 0;
}
