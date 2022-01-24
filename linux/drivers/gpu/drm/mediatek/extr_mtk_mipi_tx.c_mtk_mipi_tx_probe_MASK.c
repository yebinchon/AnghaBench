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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef  struct phy_provider phy ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_mipi_tx {struct phy_provider* pll; struct device* dev; TYPE_1__ pll_hw; struct phy_provider* regs; int /*<<< orphan*/  driver_data; } ;
struct clk_init_data {int num_parents; char const* const* parent_names; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
typedef  struct phy_provider clk ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_GATE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 char* FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct phy_provider* FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 struct phy_provider* FUNC5 (struct device*,TYPE_1__*) ; 
 struct phy_provider* FUNC6 (struct device*,struct resource*) ; 
 struct mtk_mipi_tx* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC9 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_mipi_tx_ops ; 
 int /*<<< orphan*/  mtk_mipi_tx_pll_ops ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct phy_provider*) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct phy_provider*,struct mtk_mipi_tx*) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_mipi_tx *mipi_tx;
	struct resource *mem;
	struct clk *ref_clk;
	const char *ref_clk_name;
	struct clk_init_data clk_init = {
		.ops = &mtk_mipi_tx_pll_ops,
		.num_parents = 1,
		.parent_names = (const char * const *)&ref_clk_name,
		.flags = CLK_SET_RATE_GATE,
	};
	struct phy *phy;
	struct phy_provider *phy_provider;
	int ret;

	mipi_tx = FUNC7(dev, sizeof(*mipi_tx), GFP_KERNEL);
	if (!mipi_tx)
		return -ENOMEM;

	mipi_tx->driver_data = FUNC11(dev);
	mem = FUNC14(pdev, IORESOURCE_MEM, 0);
	mipi_tx->regs = FUNC6(dev, mem);
	if (FUNC0(mipi_tx->regs)) {
		ret = FUNC1(mipi_tx->regs);
		FUNC3(dev, "Failed to get memory resource: %d\n", ret);
		return ret;
	}

	ref_clk = FUNC4(dev, NULL);
	if (FUNC0(ref_clk)) {
		ret = FUNC1(ref_clk);
		FUNC3(dev, "Failed to get reference clock: %d\n", ret);
		return ret;
	}
	ref_clk_name = FUNC2(ref_clk);

	ret = FUNC12(dev->of_node, "clock-output-names",
				      &clk_init.name);
	if (ret < 0) {
		FUNC3(dev, "Failed to read clock-output-names: %d\n", ret);
		return ret;
	}

	mipi_tx->pll_hw.init = &clk_init;
	mipi_tx->pll = FUNC5(dev, &mipi_tx->pll_hw);
	if (FUNC0(mipi_tx->pll)) {
		ret = FUNC1(mipi_tx->pll);
		FUNC3(dev, "Failed to register PLL: %d\n", ret);
		return ret;
	}

	phy = FUNC9(dev, NULL, &mtk_mipi_tx_ops);
	if (FUNC0(phy)) {
		ret = FUNC1(phy);
		FUNC3(dev, "Failed to create MIPI D-PHY: %d\n", ret);
		return ret;
	}
	FUNC13(phy, mipi_tx);

	phy_provider = FUNC8(dev, of_phy_simple_xlate);
	if (FUNC0(phy_provider)) {
		ret = FUNC1(phy_provider);
		return ret;
	}

	mipi_tx->dev = dev;

	return FUNC10(dev->of_node, of_clk_src_simple_get,
				   mipi_tx->pll);
}