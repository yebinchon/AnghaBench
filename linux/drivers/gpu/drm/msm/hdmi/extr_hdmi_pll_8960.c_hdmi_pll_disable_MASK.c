#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hdmi_pll_8960 {int dummy; } ;
struct hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int HDMI_8960_PHY_REG12_PWRDN_B ; 
 unsigned int HDMI_8960_PHY_REG12_SW_RESET ; 
 int /*<<< orphan*/  REG_HDMI_8960_PHY_PLL_PWRDN_B ; 
 int /*<<< orphan*/  REG_HDMI_8960_PHY_REG12 ; 
 unsigned int FUNC1 (struct hdmi_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_phy*,int /*<<< orphan*/ ,unsigned int) ; 
 struct hdmi_pll_8960* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct hdmi_phy* FUNC5 (struct hdmi_pll_8960*) ; 
 unsigned int FUNC6 (struct hdmi_pll_8960*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hdmi_pll_8960*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct clk_hw *hw)
{
	struct hdmi_pll_8960 *pll = FUNC3(hw);
	struct hdmi_phy *phy = FUNC5(pll);
	unsigned int val;

	FUNC0("");

	val = FUNC1(phy, REG_HDMI_8960_PHY_REG12);
	val &= ~HDMI_8960_PHY_REG12_PWRDN_B;
	FUNC2(phy, REG_HDMI_8960_PHY_REG12, val);

	val = FUNC6(pll, REG_HDMI_8960_PHY_PLL_PWRDN_B);
	val |= HDMI_8960_PHY_REG12_SW_RESET;
	val &= ~HDMI_8960_PHY_REG12_PWRDN_B;
	FUNC7(pll, REG_HDMI_8960_PHY_PLL_PWRDN_B, val);
	/* Make sure HDMI PHY/PLL are powered down */
	FUNC4();
}