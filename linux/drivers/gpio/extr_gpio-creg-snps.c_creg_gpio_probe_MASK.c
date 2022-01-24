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
typedef  int /*<<< orphan*/  u32 ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int base; int /*<<< orphan*/  of_node; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  set; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  label; } ;
struct creg_gpio {TYPE_1__ gc; int /*<<< orphan*/  lock; int /*<<< orphan*/  layout; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  creg_gpio_dir_out ; 
 int /*<<< orphan*/  creg_gpio_ids ; 
 int /*<<< orphan*/  creg_gpio_set ; 
 int FUNC2 (struct device*,struct creg_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,TYPE_1__*,struct creg_gpio*) ; 
 struct creg_gpio* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct device *dev = &pdev->dev;
	struct creg_gpio *hcg;
	u32 ngpios;
	int ret;

	hcg = FUNC6(dev, sizeof(struct creg_gpio), GFP_KERNEL);
	if (!hcg)
		return -ENOMEM;

	hcg->regs = FUNC7(pdev, 0);
	if (FUNC0(hcg->regs))
		return FUNC1(hcg->regs);

	match = FUNC8(creg_gpio_ids, pdev->dev.of_node);
	hcg->layout = match->data;
	if (!hcg->layout)
		return -EINVAL;

	ret = FUNC9(dev->of_node, "ngpios", &ngpios);
	if (ret)
		return ret;

	ret = FUNC2(dev, hcg, ngpios);
	if (ret)
		return ret;

	FUNC10(&hcg->lock);

	hcg->gc.label = FUNC4(dev);
	hcg->gc.base = -1;
	hcg->gc.ngpio = ngpios;
	hcg->gc.set = creg_gpio_set;
	hcg->gc.direction_output = creg_gpio_dir_out;
	hcg->gc.of_node = dev->of_node;

	ret = FUNC5(dev, &hcg->gc, hcg);
	if (ret)
		return ret;

	FUNC3(dev, "GPIO controller with %d gpios probed\n", ngpios);

	return 0;
}