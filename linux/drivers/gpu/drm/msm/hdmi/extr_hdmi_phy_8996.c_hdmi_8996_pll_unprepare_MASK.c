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
struct hdmi_pll_8996 {int dummy; } ;
struct hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_HDMI_8996_PHY_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct hdmi_phy*,int /*<<< orphan*/ ,int) ; 
 struct hdmi_pll_8996* FUNC1 (struct clk_hw*) ; 
 struct hdmi_phy* FUNC2 (struct hdmi_pll_8996*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct hdmi_pll_8996 *pll = FUNC1(hw);
	struct hdmi_phy *phy = FUNC2(pll);

	FUNC0(phy, REG_HDMI_8996_PHY_CFG, 0x6);
	FUNC3(100, 150);
}