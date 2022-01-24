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
typedef  int /*<<< orphan*/  u32 ;
struct st_irq_syscfg {int /*<<< orphan*/  config; int /*<<< orphan*/  syscfg; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_A9_IRQ_MASK ; 
 int ST_A9_IRQ_MAX_CHANS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct st_irq_syscfg* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct st_irq_syscfg *ddata = FUNC2(&pdev->dev);
	int channels, ret, i;
	u32 device, invert;

	channels = FUNC3(np, "st,irq-device");
	if (channels != ST_A9_IRQ_MAX_CHANS) {
		FUNC1(&pdev->dev, "st,enable-irq-device must have 2 elems\n");
		return -EINVAL;
	}

	channels = FUNC3(np, "st,fiq-device");
	if (channels != ST_A9_IRQ_MAX_CHANS) {
		FUNC1(&pdev->dev, "st,enable-fiq-device must have 2 elems\n");
		return -EINVAL;
	}

	for (i = 0; i < ST_A9_IRQ_MAX_CHANS; i++) {
		FUNC5(np, "st,irq-device", i, &device);

		ret = FUNC7(pdev, device, i, true);
		if (ret)
			return ret;

		FUNC5(np, "st,fiq-device", i, &device);

		ret = FUNC7(pdev, device, i, false);
		if (ret)
			return ret;
	}

	/* External IRQs may be inverted. */
	FUNC4(np, "st,invert-ext", &invert);
	ddata->config |= FUNC0(invert);

	return FUNC6(ddata->regmap, ddata->syscfg,
				  ST_A9_IRQ_MASK, ddata->config);
}