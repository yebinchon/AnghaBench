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
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct ftgpio_gpio {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ GPIO_INT_BOTH_EDGE ; 
 scalar_t__ GPIO_INT_LEVEL ; 
 scalar_t__ GPIO_INT_TYPE ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 struct ftgpio_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *gc = FUNC3(d);
	struct ftgpio_gpio *g = FUNC2(gc);
	u32 mask = FUNC0(FUNC5(d));
	u32 reg_both, reg_level, reg_type;

	reg_type = FUNC6(g->base + GPIO_INT_TYPE);
	reg_level = FUNC6(g->base + GPIO_INT_LEVEL);
	reg_both = FUNC6(g->base + GPIO_INT_BOTH_EDGE);

	switch (type) {
	case IRQ_TYPE_EDGE_BOTH:
		FUNC4(d, handle_edge_irq);
		reg_type &= ~mask;
		reg_both |= mask;
		break;
	case IRQ_TYPE_EDGE_RISING:
		FUNC4(d, handle_edge_irq);
		reg_type &= ~mask;
		reg_both &= ~mask;
		reg_level &= ~mask;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		FUNC4(d, handle_edge_irq);
		reg_type &= ~mask;
		reg_both &= ~mask;
		reg_level |= mask;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		FUNC4(d, handle_level_irq);
		reg_type |= mask;
		reg_level &= ~mask;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		FUNC4(d, handle_level_irq);
		reg_type |= mask;
		reg_level |= mask;
		break;
	default:
		FUNC4(d, handle_bad_irq);
		return -EINVAL;
	}

	FUNC7(reg_type, g->base + GPIO_INT_TYPE);
	FUNC7(reg_level, g->base + GPIO_INT_LEVEL);
	FUNC7(reg_both, g->base + GPIO_INT_BOTH_EDGE);

	FUNC1(d);

	return 0;
}