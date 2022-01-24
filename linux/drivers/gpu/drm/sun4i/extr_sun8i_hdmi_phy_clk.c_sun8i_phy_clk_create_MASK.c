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
struct TYPE_2__ {struct clk_init_data* init; } ;
struct sun8i_phy_clk {TYPE_1__ hw; struct sun8i_hdmi_phy* phy; } ;
struct sun8i_hdmi_phy {int /*<<< orphan*/  clk_phy; int /*<<< orphan*/  clk_pll1; int /*<<< orphan*/  clk_pll0; } ;
struct device {int dummy; } ;
struct clk_init_data {char* name; char const** parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,TYPE_1__*) ; 
 struct sun8i_phy_clk* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun8i_phy_clk_ops ; 

int FUNC5(struct sun8i_hdmi_phy *phy, struct device *dev,
			 bool second_parent)
{
	struct clk_init_data init;
	struct sun8i_phy_clk *priv;
	const char *parents[2];

	parents[0] = FUNC2(phy->clk_pll0);
	if (!parents[0])
		return -ENODEV;

	if (second_parent) {
		parents[1] = FUNC2(phy->clk_pll1);
		if (!parents[1])
			return -ENODEV;
	}

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	init.name = "hdmi-phy-clk";
	init.ops = &sun8i_phy_clk_ops;
	init.parent_names = parents;
	init.num_parents = second_parent ? 2 : 1;
	init.flags = CLK_SET_RATE_PARENT;

	priv->phy = phy;
	priv->hw.init = &init;

	phy->clk_phy = FUNC3(dev, &priv->hw);
	if (FUNC0(phy->clk_phy))
		return FUNC1(phy->clk_phy);

	return 0;
}