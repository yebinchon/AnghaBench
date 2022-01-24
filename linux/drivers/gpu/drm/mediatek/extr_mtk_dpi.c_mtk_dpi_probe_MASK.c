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
struct mtk_dpi_conf {int dummy; } ;
struct mtk_dpi {int irq; int /*<<< orphan*/  ddp_comp; TYPE_1__* bridge; void* tvd_clk; void* pixel_clk; void* engine_clk; void* regs; struct mtk_dpi_conf* conf; struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MTK_DPI ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct mtk_dpi* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_dpi_component_ops ; 
 int /*<<< orphan*/  mtk_dpi_funcs ; 
 scalar_t__ FUNC11 (struct device*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct mtk_dpi*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_dpi *dpi;
	struct resource *mem;
	int comp_id;
	int ret;

	dpi = FUNC7(dev, sizeof(*dpi), GFP_KERNEL);
	if (!dpi)
		return -ENOMEM;

	dpi->dev = dev;
	dpi->conf = (struct mtk_dpi_conf *)FUNC11(dev);

	mem = FUNC13(pdev, IORESOURCE_MEM, 0);
	dpi->regs = FUNC6(dev, mem);
	if (FUNC0(dpi->regs)) {
		ret = FUNC1(dpi->regs);
		FUNC3(dev, "Failed to ioremap mem resource: %d\n", ret);
		return ret;
	}

	dpi->engine_clk = FUNC5(dev, "engine");
	if (FUNC0(dpi->engine_clk)) {
		ret = FUNC1(dpi->engine_clk);
		FUNC3(dev, "Failed to get engine clock: %d\n", ret);
		return ret;
	}

	dpi->pixel_clk = FUNC5(dev, "pixel");
	if (FUNC0(dpi->pixel_clk)) {
		ret = FUNC1(dpi->pixel_clk);
		FUNC3(dev, "Failed to get pixel clock: %d\n", ret);
		return ret;
	}

	dpi->tvd_clk = FUNC5(dev, "pll");
	if (FUNC0(dpi->tvd_clk)) {
		ret = FUNC1(dpi->tvd_clk);
		FUNC3(dev, "Failed to get tvdpll clock: %d\n", ret);
		return ret;
	}

	dpi->irq = FUNC12(pdev, 0);
	if (dpi->irq <= 0) {
		FUNC3(dev, "Failed to get irq: %d\n", dpi->irq);
		return -EINVAL;
	}

	ret = FUNC8(dev->of_node, 0, 0,
					  NULL, &dpi->bridge);
	if (ret)
		return ret;

	FUNC4(dev, "Found bridge node: %pOF\n", dpi->bridge->of_node);

	comp_id = FUNC9(dev->of_node, MTK_DPI);
	if (comp_id < 0) {
		FUNC3(dev, "Failed to identify by alias: %d\n", comp_id);
		return comp_id;
	}

	ret = FUNC10(dev, dev->of_node, &dpi->ddp_comp, comp_id,
				&mtk_dpi_funcs);
	if (ret) {
		FUNC3(dev, "Failed to initialize component: %d\n", ret);
		return ret;
	}

	FUNC14(pdev, dpi);

	ret = FUNC2(dev, &mtk_dpi_component_ops);
	if (ret) {
		FUNC3(dev, "Failed to add component: %d\n", ret);
		return ret;
	}

	return 0;
}