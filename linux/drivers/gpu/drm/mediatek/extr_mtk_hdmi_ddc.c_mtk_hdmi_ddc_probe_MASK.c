#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {int retries; TYPE_1__ dev; struct mtk_hdmi_ddc* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct mtk_hdmi_ddc {int /*<<< orphan*/  clk; TYPE_2__ adap; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct mtk_hdmi_ddc* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  mtk_hdmi_ddc_algorithm ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct mtk_hdmi_ddc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_hdmi_ddc *ddc;
	struct resource *mem;
	int ret;

	ddc = FUNC8(dev, sizeof(struct mtk_hdmi_ddc), GFP_KERNEL);
	if (!ddc)
		return -ENOMEM;

	ddc->clk = FUNC6(dev, "ddc-i2c");
	if (FUNC0(ddc->clk)) {
		FUNC5(dev, "get ddc_clk failed: %p ,\n", ddc->clk);
		return FUNC1(ddc->clk);
	}

	mem = FUNC10(pdev, IORESOURCE_MEM, 0);
	ddc->regs = FUNC7(&pdev->dev, mem);
	if (FUNC0(ddc->regs))
		return FUNC1(ddc->regs);

	ret = FUNC3(ddc->clk);
	if (ret) {
		FUNC5(dev, "enable ddc clk failed!\n");
		return ret;
	}

	FUNC12(ddc->adap.name, "mediatek-hdmi-ddc", sizeof(ddc->adap.name));
	ddc->adap.owner = THIS_MODULE;
	ddc->adap.class = I2C_CLASS_DDC;
	ddc->adap.algo = &mtk_hdmi_ddc_algorithm;
	ddc->adap.retries = 3;
	ddc->adap.dev.of_node = dev->of_node;
	ddc->adap.algo_data = ddc;
	ddc->adap.dev.parent = &pdev->dev;

	ret = FUNC9(&ddc->adap);
	if (ret < 0) {
		FUNC5(dev, "failed to add bus to i2c core\n");
		goto err_clk_disable;
	}

	FUNC11(pdev, ddc);

	FUNC4(dev, "ddc->adap: %p\n", &ddc->adap);
	FUNC4(dev, "ddc->clk: %p\n", ddc->clk);
	FUNC4(dev, "physical adr: %pa, end: %pa\n", &mem->start,
		&mem->end);

	return 0;

err_clk_disable:
	FUNC2(ddc->clk);
	return ret;
}