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
typedef  int /*<<< orphan*/  u32 ;
struct lpc32xx_irq_chip {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int /*<<< orphan*/  LPC32XX_INTC_POL ; 
 int /*<<< orphan*/  LPC32XX_INTC_TYPE ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct lpc32xx_irq_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpc32xx_irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpc32xx_irq_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, unsigned int type)
{
	struct lpc32xx_irq_chip *ic = FUNC1(d);
	u32 val, mask = FUNC0(d->hwirq);
	bool high, edge;

	switch (type) {
	case IRQ_TYPE_EDGE_RISING:
		edge = true;
		high = true;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		edge = true;
		high = false;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		edge = false;
		high = true;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		edge = false;
		high = false;
		break;
	default:
		FUNC6("unsupported irq type %d\n", type);
		return -EINVAL;
	}

	FUNC3(d, type);

	val = FUNC4(ic, LPC32XX_INTC_POL);
	if (high)
		val |= mask;
	else
		val &= ~mask;
	FUNC5(ic, LPC32XX_INTC_POL, val);

	val = FUNC4(ic, LPC32XX_INTC_TYPE);
	if (edge) {
		val |= mask;
		FUNC2(d, handle_edge_irq);
	} else {
		val &= ~mask;
		FUNC2(d, handle_level_irq);
	}
	FUNC5(ic, LPC32XX_INTC_TYPE, val);

	return 0;
}