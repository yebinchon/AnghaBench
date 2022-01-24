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
typedef  int /*<<< orphan*/  u8 ;
struct pl061 {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ GPIOIBE ; 
 scalar_t__ GPIOIEV ; 
 scalar_t__ GPIOIS ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 int PL061_GPIO_NR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct pl061* FUNC4 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct gpio_chip* FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct irq_data *d, unsigned trigger)
{
	struct gpio_chip *gc = FUNC5(d);
	struct pl061 *pl061 = FUNC4(gc);
	int offset = FUNC7(d);
	unsigned long flags;
	u8 gpiois, gpioibe, gpioiev;
	u8 bit = FUNC0(offset);

	if (offset < 0 || offset >= PL061_GPIO_NR)
		return -EINVAL;

	if ((trigger & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)) &&
	    (trigger & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING)))
	{
		FUNC2(gc->parent,
			"trying to configure line %d for both level and edge "
			"detection, choose one!\n",
			offset);
		return -EINVAL;
	}


	FUNC8(&pl061->lock, flags);

	gpioiev = FUNC10(pl061->base + GPIOIEV);
	gpiois = FUNC10(pl061->base + GPIOIS);
	gpioibe = FUNC10(pl061->base + GPIOIBE);

	if (trigger & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)) {
		bool polarity = trigger & IRQ_TYPE_LEVEL_HIGH;

		/* Disable edge detection */
		gpioibe &= ~bit;
		/* Enable level detection */
		gpiois |= bit;
		/* Select polarity */
		if (polarity)
			gpioiev |= bit;
		else
			gpioiev &= ~bit;
		FUNC6(d, handle_level_irq);
		FUNC1(gc->parent, "line %d: IRQ on %s level\n",
			offset,
			polarity ? "HIGH" : "LOW");
	} else if ((trigger & IRQ_TYPE_EDGE_BOTH) == IRQ_TYPE_EDGE_BOTH) {
		/* Disable level detection */
		gpiois &= ~bit;
		/* Select both edges, setting this makes GPIOEV be ignored */
		gpioibe |= bit;
		FUNC6(d, handle_edge_irq);
		FUNC1(gc->parent, "line %d: IRQ on both edges\n", offset);
	} else if ((trigger & IRQ_TYPE_EDGE_RISING) ||
		   (trigger & IRQ_TYPE_EDGE_FALLING)) {
		bool rising = trigger & IRQ_TYPE_EDGE_RISING;

		/* Disable level detection */
		gpiois &= ~bit;
		/* Clear detection on both edges */
		gpioibe &= ~bit;
		/* Select edge */
		if (rising)
			gpioiev |= bit;
		else
			gpioiev &= ~bit;
		FUNC6(d, handle_edge_irq);
		FUNC1(gc->parent, "line %d: IRQ on %s edge\n",
			offset,
			rising ? "RISING" : "FALLING");
	} else {
		/* No trigger: disable everything */
		gpiois &= ~bit;
		gpioibe &= ~bit;
		gpioiev &= ~bit;
		FUNC6(d, handle_bad_irq);
		FUNC3(gc->parent, "no trigger selected for line %d\n",
			 offset);
	}

	FUNC11(gpiois, pl061->base + GPIOIS);
	FUNC11(gpioibe, pl061->base + GPIOIBE);
	FUNC11(gpioiev, pl061->base + GPIOIEV);

	FUNC9(&pl061->lock, flags);

	return 0;
}