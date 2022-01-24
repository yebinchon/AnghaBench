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
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cdn_dp_device {void* apb_rst; void* core_rst; void* dptx_rst; void* spdif_rst; void* grf_clk; void* spdif_clk; void* pclk; void* core_clk; void* regs; void* grf; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 void* FUNC5 (struct device*,char*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device_node*,char*) ; 
 struct platform_device* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct cdn_dp_device *dp)
{
	struct device *dev = dp->dev;
	struct device_node *np = dev->of_node;
	struct platform_device *pdev = FUNC8(dev);
	struct resource *res;

	dp->grf = FUNC7(np, "rockchip,grf");
	if (FUNC1(dp->grf)) {
		FUNC0(dev, "cdn-dp needs rockchip,grf property\n");
		return FUNC2(dp->grf);
	}

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	dp->regs = FUNC4(dev, res);
	if (FUNC1(dp->regs)) {
		FUNC0(dev, "ioremap reg failed\n");
		return FUNC2(dp->regs);
	}

	dp->core_clk = FUNC3(dev, "core-clk");
	if (FUNC1(dp->core_clk)) {
		FUNC0(dev, "cannot get core_clk_dp\n");
		return FUNC2(dp->core_clk);
	}

	dp->pclk = FUNC3(dev, "pclk");
	if (FUNC1(dp->pclk)) {
		FUNC0(dev, "cannot get pclk\n");
		return FUNC2(dp->pclk);
	}

	dp->spdif_clk = FUNC3(dev, "spdif");
	if (FUNC1(dp->spdif_clk)) {
		FUNC0(dev, "cannot get spdif_clk\n");
		return FUNC2(dp->spdif_clk);
	}

	dp->grf_clk = FUNC3(dev, "grf");
	if (FUNC1(dp->grf_clk)) {
		FUNC0(dev, "cannot get grf clk\n");
		return FUNC2(dp->grf_clk);
	}

	dp->spdif_rst = FUNC5(dev, "spdif");
	if (FUNC1(dp->spdif_rst)) {
		FUNC0(dev, "no spdif reset control found\n");
		return FUNC2(dp->spdif_rst);
	}

	dp->dptx_rst = FUNC5(dev, "dptx");
	if (FUNC1(dp->dptx_rst)) {
		FUNC0(dev, "no uphy reset control found\n");
		return FUNC2(dp->dptx_rst);
	}

	dp->core_rst = FUNC5(dev, "core");
	if (FUNC1(dp->core_rst)) {
		FUNC0(dev, "no core reset control found\n");
		return FUNC2(dp->core_rst);
	}

	dp->apb_rst = FUNC5(dev, "apb");
	if (FUNC1(dp->apb_rst)) {
		FUNC0(dev, "no apb reset control found\n");
		return FUNC2(dp->apb_rst);
	}

	return 0;
}