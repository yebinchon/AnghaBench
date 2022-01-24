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
struct TYPE_2__ {struct device* dev; int /*<<< orphan*/ * ops; } ;
struct mtk_dsi {int /*<<< orphan*/  irq_wait_queue; int /*<<< orphan*/  ddp_comp; void* phy; void* regs; void* hs_clk; void* digital_clk; void* engine_clk; int /*<<< orphan*/  bridge; int /*<<< orphan*/  panel; TYPE_1__ host; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MTK_DSI ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct mtk_dsi* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,char*) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_dsi*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_dsi_component_ops ; 
 int /*<<< orphan*/  mtk_dsi_funcs ; 
 int /*<<< orphan*/  mtk_dsi_irq ; 
 int /*<<< orphan*/  mtk_dsi_ops ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct mtk_dsi*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct mtk_dsi *dsi;
	struct device *dev = &pdev->dev;
	struct resource *regs;
	int irq_num;
	int comp_id;
	int ret;

	dsi = FUNC7(dev, sizeof(*dsi), GFP_KERNEL);
	if (!dsi)
		return -ENOMEM;

	dsi->host.ops = &mtk_dsi_ops;
	dsi->host.dev = dev;

	ret = FUNC10(dev->of_node, 0, 0,
					  &dsi->panel, &dsi->bridge);
	if (ret)
		return ret;

	dsi->engine_clk = FUNC5(dev, "engine");
	if (FUNC0(dsi->engine_clk)) {
		ret = FUNC1(dsi->engine_clk);
		FUNC3(dev, "Failed to get engine clock: %d\n", ret);
		return ret;
	}

	dsi->digital_clk = FUNC5(dev, "digital");
	if (FUNC0(dsi->digital_clk)) {
		ret = FUNC1(dsi->digital_clk);
		FUNC3(dev, "Failed to get digital clock: %d\n", ret);
		return ret;
	}

	dsi->hs_clk = FUNC5(dev, "hs");
	if (FUNC0(dsi->hs_clk)) {
		ret = FUNC1(dsi->hs_clk);
		FUNC3(dev, "Failed to get hs clock: %d\n", ret);
		return ret;
	}

	regs = FUNC16(pdev, IORESOURCE_MEM, 0);
	dsi->regs = FUNC6(dev, regs);
	if (FUNC0(dsi->regs)) {
		ret = FUNC1(dsi->regs);
		FUNC3(dev, "Failed to ioremap memory: %d\n", ret);
		return ret;
	}

	dsi->phy = FUNC8(dev, "dphy");
	if (FUNC0(dsi->phy)) {
		ret = FUNC1(dsi->phy);
		FUNC3(dev, "Failed to get MIPI-DPHY: %d\n", ret);
		return ret;
	}

	comp_id = FUNC13(dev->of_node, MTK_DSI);
	if (comp_id < 0) {
		FUNC3(dev, "Failed to identify by alias: %d\n", comp_id);
		return comp_id;
	}

	ret = FUNC14(dev, dev->of_node, &dsi->ddp_comp, comp_id,
				&mtk_dsi_funcs);
	if (ret) {
		FUNC3(dev, "Failed to initialize component: %d\n", ret);
		return ret;
	}

	irq_num = FUNC15(pdev, 0);
	if (irq_num < 0) {
		FUNC3(&pdev->dev, "failed to request dsi irq resource\n");
		return -EPROBE_DEFER;
	}

	FUNC12(irq_num, IRQ_TYPE_LEVEL_LOW);
	ret = FUNC9(&pdev->dev, irq_num, mtk_dsi_irq,
			       IRQF_TRIGGER_LOW, FUNC4(&pdev->dev), dsi);
	if (ret) {
		FUNC3(&pdev->dev, "failed to request mediatek dsi irq\n");
		return -EPROBE_DEFER;
	}

	FUNC11(&dsi->irq_wait_queue);

	FUNC17(pdev, dsi);

	return FUNC2(&pdev->dev, &mtk_dsi_component_ops);
}