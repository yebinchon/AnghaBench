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
struct sun8i_hdmi_phy {int /*<<< orphan*/  clk_bus; int /*<<< orphan*/  clk_mod; int /*<<< orphan*/  clk_pll1; int /*<<< orphan*/  clk_pll0; int /*<<< orphan*/  rst_phy; int /*<<< orphan*/  clk_phy; } ;
struct sun8i_dw_hdmi {struct sun8i_hdmi_phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct sun8i_dw_hdmi *hdmi)
{
	struct sun8i_hdmi_phy *phy = hdmi->phy;

	FUNC0(phy->clk_mod);
	FUNC0(phy->clk_bus);
	FUNC0(phy->clk_phy);

	FUNC2(phy->rst_phy);

	FUNC3(phy->rst_phy);

	FUNC1(phy->clk_pll0);
	FUNC1(phy->clk_pll1);
	FUNC1(phy->clk_mod);
	FUNC1(phy->clk_bus);
}