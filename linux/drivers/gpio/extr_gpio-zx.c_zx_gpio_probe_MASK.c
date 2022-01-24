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
struct gpio_irq_chip {int num_parents; int* parents; int /*<<< orphan*/  handler; int /*<<< orphan*/  default_type; int /*<<< orphan*/  parent_handler; int /*<<< orphan*/ * chip; } ;
struct TYPE_2__ {int base; int ngpio; struct gpio_irq_chip irq; int /*<<< orphan*/  owner; struct device* parent; int /*<<< orphan*/  label; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  request; } ;
struct zx_gpio {TYPE_1__ gc; scalar_t__ base; int /*<<< orphan*/  lock; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ ZX_GPIO_IE ; 
 scalar_t__ ZX_GPIO_IM ; 
 int ZX_GPIO_NR ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int* FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct zx_gpio* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct zx_gpio*) ; 
 int /*<<< orphan*/  gpiochip_generic_free ; 
 int /*<<< orphan*/  gpiochip_generic_request ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct zx_gpio*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int /*<<< orphan*/  zx_direction_input ; 
 int /*<<< orphan*/  zx_direction_output ; 
 int /*<<< orphan*/  zx_get_value ; 
 int /*<<< orphan*/  zx_irq_handler ; 
 int /*<<< orphan*/  zx_irqchip ; 
 int /*<<< orphan*/  zx_set_value ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct zx_gpio *chip;
	struct gpio_irq_chip *girq;
	int irq, id, ret;

	chip = FUNC5(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->base = FUNC6(pdev, 0);
	if (FUNC0(chip->base))
		return FUNC1(chip->base);

	FUNC12(&chip->lock);
	if (FUNC9(dev->of_node, "gpio-ranges")) {
		chip->gc.request = gpiochip_generic_request;
		chip->gc.free = gpiochip_generic_free;
	}

	id = FUNC8(dev->of_node, "gpio");
	chip->gc.direction_input = zx_direction_input;
	chip->gc.direction_output = zx_direction_output;
	chip->gc.get = zx_get_value;
	chip->gc.set = zx_set_value;
	chip->gc.base = ZX_GPIO_NR * id;
	chip->gc.ngpio = ZX_GPIO_NR;
	chip->gc.label = FUNC3(dev);
	chip->gc.parent = dev;
	chip->gc.owner = THIS_MODULE;

	/*
	 * irq_chip support
	 */
	FUNC13(0xffff, chip->base + ZX_GPIO_IM);
	FUNC13(0, chip->base + ZX_GPIO_IE);
	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;
	girq = &chip->gc.irq;
	girq->chip = &zx_irqchip;
	girq->parent_handler = zx_irq_handler;
	girq->num_parents = 1;
	girq->parents = FUNC4(&pdev->dev, 1,
				     sizeof(*girq->parents),
				     GFP_KERNEL);
	if (!girq->parents)
		return -ENOMEM;
	girq->parents[0] = irq;
	girq->default_type = IRQ_TYPE_NONE;
	girq->handler = handle_simple_irq;

	ret = FUNC7(&chip->gc, chip);
	if (ret)
		return ret;

	FUNC11(pdev, chip);
	FUNC2(dev, "ZX GPIO chip registered\n");

	return 0;
}