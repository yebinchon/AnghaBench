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
struct rockchip_dw_dsi_chip_data {scalar_t__ reg; int flags; int /*<<< orphan*/  max_data_lanes; } ;
struct resource {scalar_t__ start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct dw_mipi_dsi_rockchip* priv_data; int /*<<< orphan*/ * host_ops; int /*<<< orphan*/ * phy_ops; int /*<<< orphan*/  max_data_lanes; void* base; } ;
struct dw_mipi_dsi_rockchip {void* pllref_clk; void* dmd; TYPE_1__ pdata; struct rockchip_dw_dsi_chip_data const* cdata; void* base; struct device* dev; void* grf_regmap; void* grf_clk; void* phy_cfg_clk; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int DW_MIPI_NEEDS_GRF_CLK ; 
 int DW_MIPI_NEEDS_PHY_CFG_CLK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct dw_mipi_dsi_rockchip* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct platform_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  dw_mipi_dsi_rockchip_host_ops ; 
 int /*<<< orphan*/  dw_mipi_dsi_rockchip_phy_ops ; 
 struct rockchip_dw_dsi_chip_data* FUNC9 (struct device*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct dw_mipi_dsi_rockchip*) ; 
 void* FUNC12 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct dw_mipi_dsi_rockchip *dsi;
	struct resource *res;
	const struct rockchip_dw_dsi_chip_data *cdata =
				FUNC9(dev);
	int ret, i;

	dsi = FUNC7(dev, sizeof(*dsi), GFP_KERNEL);
	if (!dsi)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	dsi->base = FUNC6(dev, res);
	if (FUNC1(dsi->base)) {
		FUNC0(dev, "Unable to get dsi registers\n");
		return FUNC2(dsi->base);
	}

	i = 0;
	while (cdata[i].reg) {
		if (cdata[i].reg == res->start) {
			dsi->cdata = &cdata[i];
			break;
		}

		i++;
	}

	if (!dsi->cdata) {
		FUNC4(dev, "no dsi-config for %s node\n", np->name);
		return -EINVAL;
	}

	dsi->pllref_clk = FUNC5(dev, "ref");
	if (FUNC1(dsi->pllref_clk)) {
		ret = FUNC2(dsi->pllref_clk);
		FUNC0(dev,
			      "Unable to get pll reference clock: %d\n", ret);
		return ret;
	}

	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
		dsi->phy_cfg_clk = FUNC5(dev, "phy_cfg");
		if (FUNC1(dsi->phy_cfg_clk)) {
			ret = FUNC2(dsi->phy_cfg_clk);
			FUNC0(dev,
				      "Unable to get phy_cfg_clk: %d\n", ret);
			return ret;
		}
	}

	if (dsi->cdata->flags & DW_MIPI_NEEDS_GRF_CLK) {
		dsi->grf_clk = FUNC5(dev, "grf");
		if (FUNC1(dsi->grf_clk)) {
			ret = FUNC2(dsi->grf_clk);
			FUNC0(dev, "Unable to get grf_clk: %d\n", ret);
			return ret;
		}
	}

	dsi->grf_regmap = FUNC12(np, "rockchip,grf");
	if (FUNC1(dsi->grf_regmap)) {
		FUNC0(dsi->dev, "Unable to get rockchip,grf\n");
		return FUNC2(dsi->grf_regmap);
	}

	dsi->dev = dev;
	dsi->pdata.base = dsi->base;
	dsi->pdata.max_data_lanes = dsi->cdata->max_data_lanes;
	dsi->pdata.phy_ops = &dw_mipi_dsi_rockchip_phy_ops;
	dsi->pdata.host_ops = &dw_mipi_dsi_rockchip_host_ops;
	dsi->pdata.priv_data = dsi;
	FUNC11(pdev, dsi);

	dsi->dmd = FUNC8(pdev, &dsi->pdata);
	if (FUNC1(dsi->dmd)) {
		ret = FUNC2(dsi->dmd);
		if (ret != -EPROBE_DEFER)
			FUNC0(dev,
				      "Failed to probe dw_mipi_dsi: %d\n", ret);
		goto err_clkdisable;
	}

	return 0;

err_clkdisable:
	FUNC3(dsi->pllref_clk);
	return ret;
}