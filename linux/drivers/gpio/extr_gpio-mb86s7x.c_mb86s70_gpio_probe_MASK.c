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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int ngpio; int base; int /*<<< orphan*/  to_irq; int /*<<< orphan*/ * parent; int /*<<< orphan*/  owner; int /*<<< orphan*/  label; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  direction_output; } ;
struct mb86s70_gpio_chip {TYPE_1__ gc; int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mb86s70_gpio_chip* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,struct mb86s70_gpio_chip*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mb86s70_gpio_direction_input ; 
 int /*<<< orphan*/  mb86s70_gpio_direction_output ; 
 int /*<<< orphan*/  mb86s70_gpio_free ; 
 int /*<<< orphan*/  mb86s70_gpio_get ; 
 int /*<<< orphan*/  mb86s70_gpio_request ; 
 int /*<<< orphan*/  mb86s70_gpio_set ; 
 int /*<<< orphan*/  mb86s70_gpio_to_irq ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mb86s70_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct mb86s70_gpio_chip *gchip;
	int ret;

	gchip = FUNC8(&pdev->dev, sizeof(*gchip), GFP_KERNEL);
	if (gchip == NULL)
		return -ENOMEM;

	FUNC12(pdev, gchip);

	gchip->base = FUNC9(pdev, 0);
	if (FUNC0(gchip->base))
		return FUNC1(gchip->base);

	if (!FUNC11(&pdev->dev)) {
		gchip->clk = FUNC7(&pdev->dev, NULL);
		if (FUNC0(gchip->clk))
			return FUNC1(gchip->clk);

		ret = FUNC4(gchip->clk);
		if (ret)
			return ret;
	}

	FUNC13(&gchip->lock);

	gchip->gc.direction_output = mb86s70_gpio_direction_output;
	gchip->gc.direction_input = mb86s70_gpio_direction_input;
	gchip->gc.request = mb86s70_gpio_request;
	gchip->gc.free = mb86s70_gpio_free;
	gchip->gc.get = mb86s70_gpio_get;
	gchip->gc.set = mb86s70_gpio_set;
	gchip->gc.label = FUNC6(&pdev->dev);
	gchip->gc.ngpio = 32;
	gchip->gc.owner = THIS_MODULE;
	gchip->gc.parent = &pdev->dev;
	gchip->gc.base = -1;

	if (FUNC11(&pdev->dev))
		gchip->gc.to_irq = mb86s70_gpio_to_irq;

	ret = FUNC10(&gchip->gc, gchip);
	if (ret) {
		FUNC5(&pdev->dev, "couldn't register gpio driver\n");
		FUNC3(gchip->clk);
		return ret;
	}

	if (FUNC11(&pdev->dev))
		FUNC2(&gchip->gc);

	return 0;
}