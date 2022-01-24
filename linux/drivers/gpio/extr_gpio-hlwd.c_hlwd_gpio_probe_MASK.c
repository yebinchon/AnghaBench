#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct gpio_irq_chip {int num_parents; int* parents; int /*<<< orphan*/  handler; int /*<<< orphan*/  default_type; int /*<<< orphan*/  parent_handler; TYPE_1__* chip; } ;
struct TYPE_13__ {int ngpio; struct gpio_irq_chip irq; } ;
struct TYPE_11__ {int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_enable; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  name; } ;
struct hlwd_gpio {scalar_t__ irq; TYPE_5__ gpioc; TYPE_1__ irqc; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGPIOF_BIG_ENDIAN_BYTE_ORDER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HW_GPIOB_DIR ; 
 scalar_t__ HW_GPIOB_IN ; 
 scalar_t__ HW_GPIOB_INTFLAG ; 
 scalar_t__ HW_GPIOB_INTMASK ; 
 scalar_t__ HW_GPIOB_OUT ; 
 scalar_t__ HW_GPIO_OWNER ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_5__*,TYPE_2__*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int) ; 
 int FUNC6 (TYPE_2__*,TYPE_5__*,struct hlwd_gpio*) ; 
 int* FUNC7 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct hlwd_gpio* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  hlwd_gpio_irq_enable ; 
 int /*<<< orphan*/  hlwd_gpio_irq_mask ; 
 int /*<<< orphan*/  hlwd_gpio_irq_set_type ; 
 int /*<<< orphan*/  hlwd_gpio_irq_unmask ; 
 int /*<<< orphan*/  hlwd_gpio_irqhandler ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct hlwd_gpio *hlwd;
	u32 ngpios;
	int res;

	hlwd = FUNC8(&pdev->dev, sizeof(*hlwd), GFP_KERNEL);
	if (!hlwd)
		return -ENOMEM;

	hlwd->regs = FUNC9(pdev, 0);
	if (FUNC0(hlwd->regs))
		return FUNC1(hlwd->regs);

	/*
	 * Claim all GPIOs using the OWNER register. This will not work on
	 * systems where the AHBPROT memory firewall hasn't been configured to
	 * permit PPC access to HW_GPIO_*.
	 *
	 * Note that this has to happen before bgpio_init reads the
	 * HW_GPIOB_OUT and HW_GPIOB_DIR, because otherwise it reads the wrong
	 * values.
	 */
	FUNC10(0xffffffff, hlwd->regs + HW_GPIO_OWNER);

	res = FUNC2(&hlwd->gpioc, &pdev->dev, 4,
			hlwd->regs + HW_GPIOB_IN, hlwd->regs + HW_GPIOB_OUT,
			NULL, hlwd->regs + HW_GPIOB_DIR, NULL,
			BGPIOF_BIG_ENDIAN_BYTE_ORDER);
	if (res < 0) {
		FUNC5(&pdev->dev, "bgpio_init failed: %d\n", res);
		return res;
	}

	res = FUNC12(pdev->dev.of_node, "ngpios", &ngpios);
	if (res)
		ngpios = 32;
	hlwd->gpioc.ngpio = ngpios;

	/* Mask and ack all interrupts */
	FUNC10(0, hlwd->regs + HW_GPIOB_INTMASK);
	FUNC10(0xffffffff, hlwd->regs + HW_GPIOB_INTFLAG);

	/*
	 * If this GPIO controller is not marked as an interrupt controller in
	 * the DT, skip interrupt support.
	 */
	if (FUNC11(pdev->dev.of_node, "interrupt-controller")) {
		struct gpio_irq_chip *girq;

		hlwd->irq = FUNC13(pdev, 0);
		if (hlwd->irq < 0) {
			FUNC3(&pdev->dev, "platform_get_irq returned %d\n",
				 hlwd->irq);
			return hlwd->irq;
		}

		hlwd->irqc.name = FUNC4(&pdev->dev);
		hlwd->irqc.irq_mask = hlwd_gpio_irq_mask;
		hlwd->irqc.irq_unmask = hlwd_gpio_irq_unmask;
		hlwd->irqc.irq_enable = hlwd_gpio_irq_enable;
		hlwd->irqc.irq_set_type = hlwd_gpio_irq_set_type;

		girq = &hlwd->gpioc.irq;
		girq->chip = &hlwd->irqc;
		girq->parent_handler = hlwd_gpio_irqhandler;
		girq->num_parents = 1;
		girq->parents = FUNC7(&pdev->dev, 1,
					     sizeof(*girq->parents),
					     GFP_KERNEL);
		if (!girq->parents)
			return -ENOMEM;
		girq->parents[0] = hlwd->irq;
		girq->default_type = IRQ_TYPE_NONE;
		girq->handler = handle_level_irq;
	}

	return FUNC6(&pdev->dev, &hlwd->gpioc, hlwd);
}