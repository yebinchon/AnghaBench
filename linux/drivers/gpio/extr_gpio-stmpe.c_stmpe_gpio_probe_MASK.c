#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  init_valid_mask; } ;
struct TYPE_11__ {scalar_t__ ngpio; int base; int /*<<< orphan*/  dbg_show; TYPE_1__ irq; struct device_node* of_node; TYPE_7__* parent; } ;
struct stmpe_gpio {TYPE_2__ chip; int /*<<< orphan*/  norequest_mask; struct stmpe* stmpe; TYPE_7__* dev; int /*<<< orphan*/  irq_lock; } ;
struct stmpe {scalar_t__ num_gpios; } ;
struct TYPE_12__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_7__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_GPIOS ; 
 int /*<<< orphan*/  STMPE_BLOCK_GPIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char*,...) ; 
 struct stmpe* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,char*) ; 
 int FUNC4 (TYPE_7__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct stmpe_gpio*) ; 
 int FUNC5 (TYPE_2__*,struct stmpe_gpio*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC9 (struct stmpe_gpio*) ; 
 struct stmpe_gpio* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct stmpe_gpio*) ; 
 int /*<<< orphan*/  stmpe_dbg_show ; 
 int /*<<< orphan*/  FUNC15 (struct stmpe*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct stmpe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stmpe_gpio_irq ; 
 int /*<<< orphan*/  stmpe_gpio_irq_chip ; 
 int /*<<< orphan*/  stmpe_init_irq_valid_mask ; 
 TYPE_2__ template_chip ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct stmpe *stmpe = FUNC2(pdev->dev.parent);
	struct device_node *np = pdev->dev.of_node;
	struct stmpe_gpio *stmpe_gpio;
	int ret, irq;

	if (stmpe->num_gpios > MAX_GPIOS) {
		FUNC1(&pdev->dev, "Need to increase maximum GPIO number\n");
		return -EINVAL;
	}

	stmpe_gpio = FUNC10(sizeof(*stmpe_gpio), GFP_KERNEL);
	if (!stmpe_gpio)
		return -ENOMEM;

	FUNC11(&stmpe_gpio->irq_lock);

	stmpe_gpio->dev = &pdev->dev;
	stmpe_gpio->stmpe = stmpe;
	stmpe_gpio->chip = template_chip;
	stmpe_gpio->chip.ngpio = stmpe->num_gpios;
	stmpe_gpio->chip.parent = &pdev->dev;
	stmpe_gpio->chip.of_node = np;
	stmpe_gpio->chip.base = -1;
	/*
	 * REVISIT: this makes sure the valid mask gets allocated and
	 * filled in when adding the gpio_chip, but the rest of the
	 * gpio_irqchip is still filled in using the old method
	 * in gpiochip_irqchip_add_nested() so clean this up once we
	 * get the gpio_irqchip to initialize while adding the
	 * gpio_chip also for threaded irqchips.
	 */
	stmpe_gpio->chip.irq.init_valid_mask = stmpe_init_irq_valid_mask;

	if (FUNC0(CONFIG_DEBUG_FS))
                stmpe_gpio->chip.dbg_show = stmpe_dbg_show;

	FUNC12(np, "st,norequest-mask",
			&stmpe_gpio->norequest_mask);

	irq = FUNC13(pdev, 0);
	if (irq < 0)
		FUNC3(&pdev->dev,
			"device configured in no-irq mode: "
			"irqs are not available\n");

	ret = FUNC16(stmpe, STMPE_BLOCK_GPIO);
	if (ret)
		goto out_free;

	ret = FUNC5(&stmpe_gpio->chip, stmpe_gpio);
	if (ret) {
		FUNC1(&pdev->dev, "unable to add gpiochip: %d\n", ret);
		goto out_disable;
	}

	if (irq > 0) {
		ret = FUNC4(&pdev->dev, irq, NULL,
				stmpe_gpio_irq, IRQF_ONESHOT,
				"stmpe-gpio", stmpe_gpio);
		if (ret) {
			FUNC1(&pdev->dev, "unable to get irq: %d\n", ret);
			goto out_disable;
		}
		ret =  FUNC6(&stmpe_gpio->chip,
						   &stmpe_gpio_irq_chip,
						   0,
						   handle_simple_irq,
						   IRQ_TYPE_NONE);
		if (ret) {
			FUNC1(&pdev->dev,
				"could not connect irqchip to gpiochip\n");
			goto out_disable;
		}

		FUNC8(&stmpe_gpio->chip,
					    &stmpe_gpio_irq_chip,
					    irq);
	}

	FUNC14(pdev, stmpe_gpio);

	return 0;

out_disable:
	FUNC15(stmpe, STMPE_BLOCK_GPIO);
	FUNC7(&stmpe_gpio->chip);
out_free:
	FUNC9(stmpe_gpio);
	return ret;
}