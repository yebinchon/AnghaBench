#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gpio_irq_chip {int num_parents; int* parents; int /*<<< orphan*/  handler; int /*<<< orphan*/  default_type; int /*<<< orphan*/  parent_handler; int /*<<< orphan*/ * chip; } ;
struct TYPE_11__ {int ngpio; int base; struct gpio_irq_chip irq; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  owner; TYPE_1__* parent; int /*<<< orphan*/  label; } ;
struct cdns_gpio_chip {scalar_t__ regs; scalar_t__ pclk; void* bypass_orig; TYPE_4__ gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGPIOF_READ_OUTPUT_REG_SET ; 
 scalar_t__ CDNS_GPIO_BYPASS_MODE ; 
 scalar_t__ CDNS_GPIO_DIRECTION_MODE ; 
 scalar_t__ CDNS_GPIO_INPUT_VALUE ; 
 scalar_t__ CDNS_GPIO_OUTPUT_EN ; 
 scalar_t__ CDNS_GPIO_OUTPUT_VALUE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (TYPE_4__*,TYPE_1__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdns_gpio_free ; 
 int /*<<< orphan*/  cdns_gpio_irq_handler ; 
 int /*<<< orphan*/  cdns_gpio_irqchip ; 
 int /*<<< orphan*/  cdns_gpio_request ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,TYPE_4__*,struct cdns_gpio_chip*) ; 
 int* FUNC10 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 struct cdns_gpio_chip* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 void* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct cdns_gpio_chip*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct cdns_gpio_chip *cgpio;
	int ret, irq;
	u32 dir_prev;
	u32 num_gpios = 32;

	cgpio = FUNC11(&pdev->dev, sizeof(*cgpio), GFP_KERNEL);
	if (!cgpio)
		return -ENOMEM;

	cgpio->regs = FUNC12(pdev, 0);
	if (FUNC1(cgpio->regs))
		return FUNC2(cgpio->regs);

	FUNC15(pdev->dev.of_node, "ngpios", &num_gpios);

	if (num_gpios > 32) {
		FUNC6(&pdev->dev, "ngpios must be less or equal 32\n");
		return -EINVAL;
	}

	/*
	 * Set all pins as inputs by default, otherwise:
	 * gpiochip_lock_as_irq:
	 * tried to flag a GPIO set as output for IRQ
	 * Generic GPIO driver stores the direction value internally,
	 * so it needs to be changed before bgpio_init() is called.
	 */
	dir_prev = FUNC13(cgpio->regs + CDNS_GPIO_DIRECTION_MODE);
	FUNC14(FUNC0(num_gpios - 1, 0),
		  cgpio->regs + CDNS_GPIO_DIRECTION_MODE);

	ret = FUNC3(&cgpio->gc, &pdev->dev, 4,
			 cgpio->regs + CDNS_GPIO_INPUT_VALUE,
			 cgpio->regs + CDNS_GPIO_OUTPUT_VALUE,
			 NULL,
			 NULL,
			 cgpio->regs + CDNS_GPIO_DIRECTION_MODE,
			 BGPIOF_READ_OUTPUT_REG_SET);
	if (ret) {
		FUNC6(&pdev->dev, "Failed to register generic gpio, %d\n",
			ret);
		goto err_revert_dir;
	}

	cgpio->gc.label = FUNC7(&pdev->dev);
	cgpio->gc.ngpio = num_gpios;
	cgpio->gc.parent = &pdev->dev;
	cgpio->gc.base = -1;
	cgpio->gc.owner = THIS_MODULE;
	cgpio->gc.request = cdns_gpio_request;
	cgpio->gc.free = cdns_gpio_free;

	cgpio->pclk = FUNC8(&pdev->dev, NULL);
	if (FUNC1(cgpio->pclk)) {
		ret = FUNC2(cgpio->pclk);
		FUNC6(&pdev->dev,
			"Failed to retrieve peripheral clock, %d\n", ret);
		goto err_revert_dir;
	}

	ret = FUNC5(cgpio->pclk);
	if (ret) {
		FUNC6(&pdev->dev,
			"Failed to enable the peripheral clock, %d\n", ret);
		goto err_revert_dir;
	}

	/*
	 * Optional irq_chip support
	 */
	irq = FUNC16(pdev, 0);
	if (irq >= 0) {
		struct gpio_irq_chip *girq;

		girq = &cgpio->gc.irq;
		girq->chip = &cdns_gpio_irqchip;
		girq->parent_handler = cdns_gpio_irq_handler;
		girq->num_parents = 1;
		girq->parents = FUNC10(&pdev->dev, 1,
					     sizeof(*girq->parents),
					     GFP_KERNEL);
		if (!girq->parents) {
			ret = -ENOMEM;
			goto err_disable_clk;
		}
		girq->parents[0] = irq;
		girq->default_type = IRQ_TYPE_NONE;
		girq->handler = handle_level_irq;
	}

	ret = FUNC9(&pdev->dev, &cgpio->gc, cgpio);
	if (ret < 0) {
		FUNC6(&pdev->dev, "Could not register gpiochip, %d\n", ret);
		goto err_disable_clk;
	}

	cgpio->bypass_orig = FUNC13(cgpio->regs + CDNS_GPIO_BYPASS_MODE);

	/*
	 * Enable gpio outputs, ignored for input direction
	 */
	FUNC14(FUNC0(num_gpios - 1, 0),
		  cgpio->regs + CDNS_GPIO_OUTPUT_EN);
	FUNC14(0, cgpio->regs + CDNS_GPIO_BYPASS_MODE);

	FUNC17(pdev, cgpio);
	return 0;

err_disable_clk:
	FUNC4(cgpio->pclk);

err_revert_dir:
	FUNC14(dir_prev, cgpio->regs + CDNS_GPIO_DIRECTION_MODE);

	return ret;
}