#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_11__ {int base; unsigned int ngpio; int can_sleep; int /*<<< orphan*/  label; int /*<<< orphan*/  dbg_show; struct device_node* of_node; int /*<<< orphan*/  to_irq; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  free; int /*<<< orphan*/  request; TYPE_2__* parent; } ;
struct mvebu_gpio_chip {int soc_variant; int /*<<< orphan*/  domain; TYPE_5__ chip; int /*<<< orphan*/  percpu_regs; int /*<<< orphan*/  regs; scalar_t__ offset; int /*<<< orphan*/  clk; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; void* irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  irq_ack; } ;
struct irq_chip_type {int type; TYPE_1__ chip; int /*<<< orphan*/  handler; } ;
struct irq_chip_generic {struct irq_chip_type* chip_types; struct mvebu_gpio_chip* private; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CONFIG_PWM ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ GPIO_EDGE_CAUSE_OFF ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ GPIO_EDGE_MASK_OFF ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ GPIO_LEVEL_MASK_OFF ; 
 int IRQ_LEVEL ; 
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int IRQ_TYPE_LEVEL_HIGH ; 
 int IRQ_TYPE_LEVEL_LOW ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  MVEBU_GPIO_SOC_VARIANT_A8K 131 
#define  MVEBU_GPIO_SOC_VARIANT_ARMADAXP 130 
#define  MVEBU_GPIO_SOC_VARIANT_MV78200 129 
#define  MVEBU_GPIO_SOC_VARIANT_ORION 128 
 int MVEBU_MAX_GPIO_PER_BANK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_5__*,struct mvebu_gpio_chip*) ; 
 struct mvebu_gpio_chip* FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiochip_generic_free ; 
 int /*<<< orphan*/  gpiochip_generic_request ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int FUNC14 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_generic_chip_ops ; 
 struct irq_chip_generic* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,struct mvebu_gpio_chip*) ; 
 int /*<<< orphan*/  mvebu_gpio_dbg_show ; 
 int /*<<< orphan*/  mvebu_gpio_direction_input ; 
 int /*<<< orphan*/  mvebu_gpio_direction_output ; 
 int /*<<< orphan*/  mvebu_gpio_edge_irq_mask ; 
 int /*<<< orphan*/  mvebu_gpio_edge_irq_unmask ; 
 int /*<<< orphan*/  mvebu_gpio_get ; 
 int /*<<< orphan*/  mvebu_gpio_get_direction ; 
 int /*<<< orphan*/  mvebu_gpio_irq_ack ; 
 int /*<<< orphan*/  mvebu_gpio_irq_handler ; 
 void* mvebu_gpio_irq_set_type ; 
 int /*<<< orphan*/  mvebu_gpio_level_irq_mask ; 
 int /*<<< orphan*/  mvebu_gpio_level_irq_unmask ; 
 int /*<<< orphan*/  mvebu_gpio_of_match ; 
 int FUNC19 (struct platform_device*,struct mvebu_gpio_chip*) ; 
 int FUNC20 (struct platform_device*,struct mvebu_gpio_chip*) ; 
 int /*<<< orphan*/  mvebu_gpio_set ; 
 int /*<<< orphan*/  mvebu_gpio_to_irq ; 
 int FUNC21 (struct platform_device*,struct mvebu_gpio_chip*,int) ; 
 int FUNC22 (struct device_node*,char*) ; 
 scalar_t__ FUNC23 (struct device_node*) ; 
 struct of_device_id* FUNC24 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC25 (struct device_node*,char*,unsigned int*) ; 
 int FUNC26 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,struct mvebu_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct mvebu_gpio_chip *mvchip;
	const struct of_device_id *match;
	struct device_node *np = pdev->dev.of_node;
	struct irq_chip_generic *gc;
	struct irq_chip_type *ct;
	unsigned int ngpios;
	bool have_irqs;
	int soc_variant;
	int i, cpu, id;
	int err;

	match = FUNC24(mvebu_gpio_of_match, &pdev->dev);
	if (match)
		soc_variant = (unsigned long) match->data;
	else
		soc_variant = MVEBU_GPIO_SOC_VARIANT_ORION;

	/* Some gpio controllers do not provide irq support */
	have_irqs = FUNC23(np) != 0;

	mvchip = FUNC13(&pdev->dev, sizeof(struct mvebu_gpio_chip),
			      GFP_KERNEL);
	if (!mvchip)
		return -ENOMEM;

	FUNC27(pdev, mvchip);

	if (FUNC25(pdev->dev.of_node, "ngpios", &ngpios)) {
		FUNC9(&pdev->dev, "Missing ngpios OF property\n");
		return -ENODEV;
	}

	id = FUNC22(pdev->dev.of_node, "gpio");
	if (id < 0) {
		FUNC9(&pdev->dev, "Couldn't get OF id\n");
		return id;
	}

	mvchip->clk = FUNC11(&pdev->dev, NULL);
	/* Not all SoCs require a clock.*/
	if (!FUNC7(mvchip->clk))
		FUNC8(mvchip->clk);

	mvchip->soc_variant = soc_variant;
	mvchip->chip.label = FUNC10(&pdev->dev);
	mvchip->chip.parent = &pdev->dev;
	mvchip->chip.request = gpiochip_generic_request;
	mvchip->chip.free = gpiochip_generic_free;
	mvchip->chip.get_direction = mvebu_gpio_get_direction;
	mvchip->chip.direction_input = mvebu_gpio_direction_input;
	mvchip->chip.get = mvebu_gpio_get;
	mvchip->chip.direction_output = mvebu_gpio_direction_output;
	mvchip->chip.set = mvebu_gpio_set;
	if (have_irqs)
		mvchip->chip.to_irq = mvebu_gpio_to_irq;
	mvchip->chip.base = id * MVEBU_MAX_GPIO_PER_BANK;
	mvchip->chip.ngpio = ngpios;
	mvchip->chip.can_sleep = false;
	mvchip->chip.of_node = np;
	mvchip->chip.dbg_show = mvebu_gpio_dbg_show;

	if (soc_variant == MVEBU_GPIO_SOC_VARIANT_A8K)
		err = FUNC20(pdev, mvchip);
	else
		err = FUNC19(pdev, mvchip);

	if (err)
		return err;

	/*
	 * Mask and clear GPIO interrupts.
	 */
	switch (soc_variant) {
	case MVEBU_GPIO_SOC_VARIANT_ORION:
	case MVEBU_GPIO_SOC_VARIANT_A8K:
		FUNC28(mvchip->regs,
			     GPIO_EDGE_CAUSE_OFF + mvchip->offset, 0);
		FUNC28(mvchip->regs,
			     GPIO_EDGE_MASK_OFF + mvchip->offset, 0);
		FUNC28(mvchip->regs,
			     GPIO_LEVEL_MASK_OFF + mvchip->offset, 0);
		break;
	case MVEBU_GPIO_SOC_VARIANT_MV78200:
		FUNC28(mvchip->regs, GPIO_EDGE_CAUSE_OFF, 0);
		for (cpu = 0; cpu < 2; cpu++) {
			FUNC28(mvchip->regs,
				     FUNC3(cpu), 0);
			FUNC28(mvchip->regs,
				     FUNC5(cpu), 0);
		}
		break;
	case MVEBU_GPIO_SOC_VARIANT_ARMADAXP:
		FUNC28(mvchip->regs, GPIO_EDGE_CAUSE_OFF, 0);
		FUNC28(mvchip->regs, GPIO_EDGE_MASK_OFF, 0);
		FUNC28(mvchip->regs, GPIO_LEVEL_MASK_OFF, 0);
		for (cpu = 0; cpu < 4; cpu++) {
			FUNC28(mvchip->percpu_regs,
				     FUNC1(cpu), 0);
			FUNC28(mvchip->percpu_regs,
				     FUNC2(cpu), 0);
			FUNC28(mvchip->percpu_regs,
				     FUNC4(cpu), 0);
		}
		break;
	default:
		FUNC0();
	}

	FUNC12(&pdev->dev, &mvchip->chip, mvchip);

	/* Some gpio controllers do not provide irq support */
	if (!have_irqs)
		return 0;

	mvchip->domain =
	    FUNC15(np, ngpios, &irq_generic_chip_ops, NULL);
	if (!mvchip->domain) {
		FUNC9(&pdev->dev, "couldn't allocate irq domain %s (DT).\n",
			mvchip->chip.label);
		return -ENODEV;
	}

	err = FUNC14(
	    mvchip->domain, ngpios, 2, np->name, handle_level_irq,
	    IRQ_NOREQUEST | IRQ_NOPROBE | IRQ_LEVEL, 0, 0);
	if (err) {
		FUNC9(&pdev->dev, "couldn't allocate irq chips %s (DT).\n",
			mvchip->chip.label);
		goto err_domain;
	}

	/*
	 * NOTE: The common accessors cannot be used because of the percpu
	 * access to the mask registers
	 */
	gc = FUNC17(mvchip->domain, 0);
	gc->private = mvchip;
	ct = &gc->chip_types[0];
	ct->type = IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW;
	ct->chip.irq_mask = mvebu_gpio_level_irq_mask;
	ct->chip.irq_unmask = mvebu_gpio_level_irq_unmask;
	ct->chip.irq_set_type = mvebu_gpio_irq_set_type;
	ct->chip.name = mvchip->chip.label;

	ct = &gc->chip_types[1];
	ct->type = IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING;
	ct->chip.irq_ack = mvebu_gpio_irq_ack;
	ct->chip.irq_mask = mvebu_gpio_edge_irq_mask;
	ct->chip.irq_unmask = mvebu_gpio_edge_irq_unmask;
	ct->chip.irq_set_type = mvebu_gpio_irq_set_type;
	ct->handler = handle_edge_irq;
	ct->chip.name = mvchip->chip.label;

	/*
	 * Setup the interrupt handlers. Each chip can have up to 4
	 * interrupt handlers, with each handler dealing with 8 GPIO
	 * pins.
	 */
	for (i = 0; i < 4; i++) {
		int irq = FUNC26(pdev, i);

		if (irq < 0)
			continue;
		FUNC18(irq, mvebu_gpio_irq_handler,
						 mvchip);
	}

	/* Some MVEBU SoCs have simple PWM support for GPIO lines */
	if (FUNC6(CONFIG_PWM))
		return FUNC21(pdev, mvchip, id);

	return 0;

err_domain:
	FUNC16(mvchip->domain);

	return err;
}