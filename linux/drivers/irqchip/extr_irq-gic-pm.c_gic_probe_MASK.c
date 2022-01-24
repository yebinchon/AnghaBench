#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct gic_clk_data {int num_clocks; int /*<<< orphan*/ * clocks; } ;
struct gic_chip_pm {int /*<<< orphan*/  chip_data; struct gic_clk_data const* clk_data; TYPE_1__* clks; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct gic_chip_pm*) ; 
 int FUNC3 (struct device*,int,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct gic_chip_pm* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gic_clk_data* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct gic_clk_data *data;
	struct gic_chip_pm *chip_pm;
	int ret, irq, i;

	data = FUNC9(&pdev->dev);
	if (!data) {
		FUNC0(&pdev->dev, "no device match found\n");
		return -ENODEV;
	}

	chip_pm = FUNC5(dev, sizeof(*chip_pm), GFP_KERNEL);
	if (!chip_pm)
		return -ENOMEM;

	irq = FUNC8(dev->of_node, 0);
	if (!irq) {
		FUNC0(dev, "no parent interrupt found!\n");
		return -EINVAL;
	}

	chip_pm->clks = FUNC4(dev, data->num_clocks,
				     sizeof(*chip_pm->clks), GFP_KERNEL);
	if (!chip_pm->clks)
		return -ENOMEM;

	for (i = 0; i < data->num_clocks; i++)
		chip_pm->clks[i].id = data->clocks[i];

	ret = FUNC3(dev, data->num_clocks, chip_pm->clks);
	if (ret)
		goto irq_dispose;

	chip_pm->clk_data = data;
	FUNC2(dev, chip_pm);

	FUNC11(dev);

	ret = FUNC12(dev);
	if (ret < 0)
		goto rpm_disable;

	ret = FUNC6(dev, &chip_pm->chip_data, irq);
	if (ret)
		goto rpm_put;

	FUNC13(dev);

	FUNC1(dev, "GIC IRQ controller registered\n");

	return 0;

rpm_put:
	FUNC14(dev);
rpm_disable:
	FUNC10(dev);
irq_dispose:
	FUNC7(irq);

	return ret;
}