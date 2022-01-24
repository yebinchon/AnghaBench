#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_irq_syscfg {unsigned int syscfg; int /*<<< orphan*/  regmap; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct st_irq_syscfg*) ; 
 struct st_irq_syscfg* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  st_irq_syscfg_match ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *match;
	struct st_irq_syscfg *ddata;

	ddata = FUNC4(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	match = FUNC5(st_irq_syscfg_match, &pdev->dev);
	if (!match)
		return -ENODEV;

	ddata->syscfg = (unsigned int)match->data;

	ddata->regmap = FUNC7(np, "st,syscfg");
	if (FUNC0(ddata->regmap)) {
		FUNC2(&pdev->dev, "syscfg phandle missing\n");
		return FUNC1(ddata->regmap);
	}

	FUNC3(&pdev->dev, ddata);

	return FUNC6(pdev);
}