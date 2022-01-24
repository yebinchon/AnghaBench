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
typedef  int /*<<< orphan*/  u32 ;
struct meson_gpio_irq_controller {int /*<<< orphan*/  lock; TYPE_1__* params; } ;
struct TYPE_2__ {int /*<<< orphan*/  support_edge_both; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  REG_EDGE_POL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (struct meson_gpio_irq_controller*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_gpio_irq_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct meson_gpio_irq_controller *ctl,
				     unsigned int type,
				     u32 *channel_hwirq)
{
	u32 val = 0;
	unsigned int idx;

	idx = FUNC4(ctl, channel_hwirq);

	/*
	 * The controller has a filter block to operate in either LEVEL or
	 * EDGE mode, then signal is sent to the GIC. To enable LEVEL_LOW and
	 * EDGE_FALLING support (which the GIC does not support), the filter
	 * block is also able to invert the input signal it gets before
	 * providing it to the GIC.
	 */
	type &= IRQ_TYPE_SENSE_MASK;

	/*
	 * New controller support EDGE_BOTH trigger. This setting takes
	 * precedence over the other edge/polarity settings
	 */
	if (type == IRQ_TYPE_EDGE_BOTH) {
		if (!ctl->params->support_edge_both)
			return -EINVAL;

		val |= FUNC0(idx);
	} else {
		if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING))
			val |= FUNC1(idx);

		if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_EDGE_FALLING))
			val |= FUNC2(idx);
	}

	FUNC6(&ctl->lock);

	FUNC5(ctl, REG_EDGE_POL,
				   FUNC3(idx), val);

	FUNC7(&ctl->lock);

	return 0;
}