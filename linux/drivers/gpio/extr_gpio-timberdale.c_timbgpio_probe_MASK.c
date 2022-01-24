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
struct timbgpio_platform_data {int nr_pins; scalar_t__ irq_base; int /*<<< orphan*/  gpio_base; } ;
struct gpio_chip {int ngpio; int can_sleep; int /*<<< orphan*/  base; int /*<<< orphan*/ * dbg_show; int /*<<< orphan*/ * to_irq; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; struct device* parent; int /*<<< orphan*/  owner; int /*<<< orphan*/  label; } ;
struct timbgpio {scalar_t__ irq_base; scalar_t__ membase; struct gpio_chip gpio; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ TGPIO_IER ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct timbgpio_platform_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,struct gpio_chip*,struct timbgpio*) ; 
 struct timbgpio* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,struct timbgpio*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct timbgpio*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct timbgpio*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timbgpio_gpio_direction_input ; 
 int /*<<< orphan*/  timbgpio_gpio_direction_output ; 
 int /*<<< orphan*/  timbgpio_gpio_get ; 
 int /*<<< orphan*/  timbgpio_gpio_set ; 
 int /*<<< orphan*/  timbgpio_irq ; 
 int /*<<< orphan*/  timbgpio_irqchip ; 
 int /*<<< orphan*/ * timbgpio_to_irq ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int err, i;
	struct device *dev = &pdev->dev;
	struct gpio_chip *gc;
	struct timbgpio *tgpio;
	struct timbgpio_platform_data *pdata = FUNC3(&pdev->dev);
	int irq = FUNC13(pdev, 0);

	if (!pdata || pdata->nr_pins > 32) {
		FUNC2(dev, "Invalid platform data\n");
		return -EINVAL;
	}

	tgpio = FUNC6(dev, sizeof(*tgpio), GFP_KERNEL);
	if (!tgpio)
		return -EINVAL;

	tgpio->irq_base = pdata->irq_base;

	FUNC15(&tgpio->lock);

	tgpio->membase = FUNC7(pdev, 0);
	if (FUNC0(tgpio->membase))
		return FUNC1(tgpio->membase);

	gc = &tgpio->gpio;

	gc->label = FUNC4(&pdev->dev);
	gc->owner = THIS_MODULE;
	gc->parent = &pdev->dev;
	gc->direction_input = timbgpio_gpio_direction_input;
	gc->get = timbgpio_gpio_get;
	gc->direction_output = timbgpio_gpio_direction_output;
	gc->set = timbgpio_gpio_set;
	gc->to_irq = (irq >= 0 && tgpio->irq_base > 0) ? timbgpio_to_irq : NULL;
	gc->dbg_show = NULL;
	gc->base = pdata->gpio_base;
	gc->ngpio = pdata->nr_pins;
	gc->can_sleep = false;

	err = FUNC5(&pdev->dev, gc, tgpio);
	if (err)
		return err;

	FUNC14(pdev, tgpio);

	/* make sure to disable interrupts */
	FUNC8(0x0, tgpio->membase + TGPIO_IER);

	if (irq < 0 || tgpio->irq_base <= 0)
		return 0;

	for (i = 0; i < pdata->nr_pins; i++) {
		FUNC11(tgpio->irq_base + i,
			&timbgpio_irqchip, handle_simple_irq);
		FUNC12(tgpio->irq_base + i, tgpio);
		FUNC9(tgpio->irq_base + i, IRQ_NOREQUEST | IRQ_NOPROBE);
	}

	FUNC10(irq, timbgpio_irq, tgpio);

	return 0;
}