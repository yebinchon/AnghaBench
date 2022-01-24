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
struct mtk_hdmi_phy_conf {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_hdmi_phy {int drv_imp_clk; int drv_imp_d2; int drv_imp_d1; int drv_imp_d0; struct phy_provider* pll; int /*<<< orphan*/  ibias_up; int /*<<< orphan*/  ibias; TYPE_1__ pll_hw; struct mtk_hdmi_phy_conf* conf; struct device* dev; struct phy_provider* regs; } ;
struct clk_init_data {int num_parents; char const* const* parent_names; int /*<<< orphan*/  name; } ;
typedef  struct phy_provider clk ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int FUNC1 (struct phy_provider*) ; 
 char* FUNC2 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct phy_provider* FUNC5 (struct device*,char*) ; 
 struct phy_provider* FUNC6 (struct device*,TYPE_1__*) ; 
 struct phy_provider* FUNC7 (struct device*,struct resource*) ; 
 struct mtk_hdmi_phy* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_hdmi_phy*,struct clk_init_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct mtk_hdmi_phy*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct phy_provider*) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 scalar_t__ FUNC14 (struct device*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct phy_provider*,struct mtk_hdmi_phy*) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_hdmi_phy *hdmi_phy;
	struct resource *mem;
	struct clk *ref_clk;
	const char *ref_clk_name;
	struct clk_init_data clk_init = {
		.num_parents = 1,
		.parent_names = (const char * const *)&ref_clk_name,
	};

	struct phy *phy;
	struct phy_provider *phy_provider;
	int ret;

	hdmi_phy = FUNC8(dev, sizeof(*hdmi_phy), GFP_KERNEL);
	if (!hdmi_phy)
		return -ENOMEM;

	mem = FUNC18(pdev, IORESOURCE_MEM, 0);
	hdmi_phy->regs = FUNC7(dev, mem);
	if (FUNC0(hdmi_phy->regs)) {
		ret = FUNC1(hdmi_phy->regs);
		FUNC3(dev, "Failed to get memory resource: %d\n", ret);
		return ret;
	}

	ref_clk = FUNC5(dev, "pll_ref");
	if (FUNC0(ref_clk)) {
		ret = FUNC1(ref_clk);
		FUNC3(&pdev->dev, "Failed to get PLL reference clock: %d\n",
			ret);
		return ret;
	}
	ref_clk_name = FUNC2(ref_clk);

	ret = FUNC15(dev->of_node, "clock-output-names",
				      &clk_init.name);
	if (ret < 0) {
		FUNC3(dev, "Failed to read clock-output-names: %d\n", ret);
		return ret;
	}

	hdmi_phy->dev = dev;
	hdmi_phy->conf =
		(struct mtk_hdmi_phy_conf *)FUNC14(dev);
	FUNC11(hdmi_phy, &clk_init);
	hdmi_phy->pll_hw.init = &clk_init;
	hdmi_phy->pll = FUNC6(dev, &hdmi_phy->pll_hw);
	if (FUNC0(hdmi_phy->pll)) {
		ret = FUNC1(hdmi_phy->pll);
		FUNC3(dev, "Failed to register PLL: %d\n", ret);
		return ret;
	}

	ret = FUNC16(dev->of_node, "mediatek,ibias",
				   &hdmi_phy->ibias);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to get ibias: %d\n", ret);
		return ret;
	}

	ret = FUNC16(dev->of_node, "mediatek,ibias_up",
				   &hdmi_phy->ibias_up);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to get ibias up: %d\n", ret);
		return ret;
	}

	FUNC4(dev, "Using default TX DRV impedance: 4.2k/36\n");
	hdmi_phy->drv_imp_clk = 0x30;
	hdmi_phy->drv_imp_d2 = 0x30;
	hdmi_phy->drv_imp_d1 = 0x30;
	hdmi_phy->drv_imp_d0 = 0x30;

	phy = FUNC10(dev, NULL, FUNC12(hdmi_phy));
	if (FUNC0(phy)) {
		FUNC3(dev, "Failed to create HDMI PHY\n");
		return FUNC1(phy);
	}
	FUNC17(phy, hdmi_phy);

	phy_provider = FUNC9(dev, of_phy_simple_xlate);
	if (FUNC0(phy_provider)) {
		FUNC3(dev, "Failed to register HDMI PHY\n");
		return FUNC1(phy_provider);
	}

	return FUNC13(dev->of_node, of_clk_src_simple_get,
				   hdmi_phy->pll);
}