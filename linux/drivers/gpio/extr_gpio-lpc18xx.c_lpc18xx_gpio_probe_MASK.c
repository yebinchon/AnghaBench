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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct lpc18xx_gpio_chip {int /*<<< orphan*/  clk; TYPE_1__ gpio; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*,TYPE_1__*,struct lpc18xx_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct lpc18xx_gpio_chip* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__ lpc18xx_chip ; 
 int /*<<< orphan*/  FUNC10 (struct lpc18xx_gpio_chip*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct lpc18xx_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct lpc18xx_gpio_chip *gc;
	int index, ret;

	gc = FUNC8(dev, sizeof(*gc), GFP_KERNEL);
	if (!gc)
		return -ENOMEM;

	gc->gpio = lpc18xx_chip;
	FUNC13(pdev, gc);

	index = FUNC12(dev->of_node, "reg-names", "gpio");
	if (index < 0) {
		/* To support backward compatibility take the first resource */
		gc->base = FUNC9(pdev, 0);
	} else {
		struct resource res;

		ret = FUNC11(dev->of_node, index, &res);
		if (ret < 0)
			return ret;

		gc->base = FUNC7(dev, &res);
	}
	if (FUNC0(gc->base))
		return FUNC1(gc->base);

	gc->clk = FUNC5(dev, NULL);
	if (FUNC0(gc->clk)) {
		FUNC4(dev, "input clock not found\n");
		return FUNC1(gc->clk);
	}

	ret = FUNC3(gc->clk);
	if (ret) {
		FUNC4(dev, "unable to enable clock\n");
		return ret;
	}

	FUNC14(&gc->lock);

	gc->gpio.parent = dev;

	ret = FUNC6(dev, &gc->gpio, gc);
	if (ret) {
		FUNC4(dev, "failed to add gpio chip\n");
		FUNC2(gc->clk);
		return ret;
	}

	/* On error GPIO pin interrupt controller just won't be registered */
	FUNC10(gc);

	return 0;
}