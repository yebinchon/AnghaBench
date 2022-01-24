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
struct irq_data {int dummy; } ;
struct gpio_rcar_priv {int /*<<< orphan*/  has_both_edge_trigger; int /*<<< orphan*/  dev; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_rcar_priv*,unsigned int,int,int,int) ; 
 struct gpio_rcar_priv* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 unsigned int FUNC4 (struct irq_data*) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *gc = FUNC3(d);
	struct gpio_rcar_priv *p = FUNC2(gc);
	unsigned int hwirq = FUNC4(d);

	FUNC0(p->dev, "sense irq = %d, type = %d\n", hwirq, type);

	switch (type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_LEVEL_HIGH:
		FUNC1(p, hwirq, true, true,
						      false);
		break;
	case IRQ_TYPE_LEVEL_LOW:
		FUNC1(p, hwirq, false, true,
						      false);
		break;
	case IRQ_TYPE_EDGE_RISING:
		FUNC1(p, hwirq, true, false,
						      false);
		break;
	case IRQ_TYPE_EDGE_FALLING:
		FUNC1(p, hwirq, false, false,
						      false);
		break;
	case IRQ_TYPE_EDGE_BOTH:
		if (!p->has_both_edge_trigger)
			return -EINVAL;
		FUNC1(p, hwirq, true, false,
						      true);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}