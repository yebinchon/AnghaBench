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
struct rockchip_dfi {int /*<<< orphan*/  edev; struct devfreq_event_desc* desc; struct device* dev; int /*<<< orphan*/  regmap_pmu; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct devfreq_event_desc {int /*<<< orphan*/  name; struct rockchip_dfi* driver_data; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct devfreq_event_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rockchip_dfi*) ; 
 int /*<<< orphan*/  rockchip_dfi_ops ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rockchip_dfi *data;
	struct resource *res;
	struct devfreq_event_desc *desc;
	struct device_node *np = pdev->dev.of_node, *node;

	data = FUNC6(dev, sizeof(struct rockchip_dfi), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	data->regs = FUNC5(&pdev->dev, res);
	if (FUNC0(data->regs))
		return FUNC1(data->regs);

	data->clk = FUNC3(dev, "pclk_ddr_mon");
	if (FUNC0(data->clk)) {
		FUNC2(dev, "Cannot get the clk dmc_clk\n");
		return FUNC1(data->clk);
	}

	/* try to find the optional reference to the pmu syscon */
	node = FUNC7(np, "rockchip,pmu", 0);
	if (node) {
		data->regmap_pmu = FUNC10(node);
		if (FUNC0(data->regmap_pmu))
			return FUNC1(data->regmap_pmu);
	}
	data->dev = dev;

	desc = FUNC6(dev, sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return -ENOMEM;

	desc->ops = &rockchip_dfi_ops;
	desc->driver_data = data;
	desc->name = np->name;
	data->desc = desc;

	data->edev = FUNC4(&pdev->dev, desc);
	if (FUNC0(data->edev)) {
		FUNC2(&pdev->dev,
			"failed to add devfreq-event device\n");
		return FUNC1(data->edev);
	}

	FUNC9(pdev, data);

	return 0;
}