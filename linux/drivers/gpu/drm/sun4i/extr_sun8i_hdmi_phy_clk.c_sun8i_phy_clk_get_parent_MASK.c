#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct sun8i_phy_clk {TYPE_1__* phy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK ; 
 int SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_SHIFT ; 
 int /*<<< orphan*/  SUN8I_HDMI_PHY_PLL_CFG1_REG ; 
 struct sun8i_phy_clk* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u8 FUNC2(struct clk_hw *hw)
{
	struct sun8i_phy_clk *priv = FUNC0(hw);
	u32 reg;

	FUNC1(priv->phy->regs, SUN8I_HDMI_PHY_PLL_CFG1_REG, &reg);
	reg = (reg & SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK) >>
	      SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_SHIFT;

	return reg;
}