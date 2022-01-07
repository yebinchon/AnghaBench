
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


 scalar_t__ SUN4I_HDMI_PLL_DBG0_REG ;
 int SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_MASK ;
 int SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_SHIFT ;
 struct sun4i_tmds* hw_to_tmds (struct clk_hw*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static u8 sun4i_tmds_get_parent(struct clk_hw *hw)
{
 struct sun4i_tmds *tmds = hw_to_tmds(hw);
 u32 reg;

 reg = readl(tmds->hdmi->base + SUN4I_HDMI_PLL_DBG0_REG);
 return ((reg & SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_MASK) >>
  SUN4I_HDMI_PLL_DBG0_TMDS_PARENT_SHIFT);
}
