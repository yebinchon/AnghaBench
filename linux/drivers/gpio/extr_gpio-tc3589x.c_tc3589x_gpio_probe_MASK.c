#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int base; struct device_node* of_node; TYPE_4__* parent; int /*<<< orphan*/  ngpio; } ;
struct tc3589x_gpio {TYPE_1__ chip; struct tc3589x* tc3589x; TYPE_4__* dev; int /*<<< orphan*/  irq_lock; } ;
struct tc3589x {int /*<<< orphan*/  num_gpio; } ;
struct TYPE_10__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  TC3589x_RSTCTRL ; 
 int /*<<< orphan*/  TC3589x_RSTCTRL_GPIRST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,...) ; 
 struct tc3589x* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,TYPE_1__*,struct tc3589x_gpio*) ; 
 struct tc3589x_gpio* FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tc3589x_gpio*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct tc3589x_gpio*) ; 
 int /*<<< orphan*/  tc3589x_gpio_irq ; 
 int /*<<< orphan*/  tc3589x_gpio_irq_chip ; 
 int FUNC10 (struct tc3589x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ template_chip ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct tc3589x *tc3589x = FUNC1(pdev->dev.parent);
	struct device_node *np = pdev->dev.of_node;
	struct tc3589x_gpio *tc3589x_gpio;
	int ret;
	int irq;

	if (!np) {
		FUNC0(&pdev->dev, "No Device Tree node found\n");
		return -EINVAL;
	}

	irq = FUNC8(pdev, 0);
	if (irq < 0)
		return irq;

	tc3589x_gpio = FUNC3(&pdev->dev, sizeof(struct tc3589x_gpio),
				    GFP_KERNEL);
	if (!tc3589x_gpio)
		return -ENOMEM;

	FUNC7(&tc3589x_gpio->irq_lock);

	tc3589x_gpio->dev = &pdev->dev;
	tc3589x_gpio->tc3589x = tc3589x;

	tc3589x_gpio->chip = template_chip;
	tc3589x_gpio->chip.ngpio = tc3589x->num_gpio;
	tc3589x_gpio->chip.parent = &pdev->dev;
	tc3589x_gpio->chip.base = -1;
	tc3589x_gpio->chip.of_node = np;

	/* Bring the GPIO module out of reset */
	ret = FUNC10(tc3589x, TC3589x_RSTCTRL,
			       TC3589x_RSTCTRL_GPIRST, 0);
	if (ret < 0)
		return ret;

	ret = FUNC4(&pdev->dev,
					irq, NULL, tc3589x_gpio_irq,
					IRQF_ONESHOT, "tc3589x-gpio",
					tc3589x_gpio);
	if (ret) {
		FUNC0(&pdev->dev, "unable to get irq: %d\n", ret);
		return ret;
	}

	ret = FUNC2(&pdev->dev, &tc3589x_gpio->chip,
				     tc3589x_gpio);
	if (ret) {
		FUNC0(&pdev->dev, "unable to add gpiochip: %d\n", ret);
		return ret;
	}

	ret =  FUNC5(&tc3589x_gpio->chip,
					   &tc3589x_gpio_irq_chip,
					   0,
					   handle_simple_irq,
					   IRQ_TYPE_NONE);
	if (ret) {
		FUNC0(&pdev->dev,
			"could not connect irqchip to gpiochip\n");
		return ret;
	}

	FUNC6(&tc3589x_gpio->chip,
				    &tc3589x_gpio_irq_chip,
				    irq);

	FUNC9(pdev, tc3589x_gpio);

	return 0;
}