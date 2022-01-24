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
struct xlp_gpio_priv {int /*<<< orphan*/  gpio_intr_pol; int /*<<< orphan*/  gpio_intr_type; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int XLP_GPIO_IRQ_POL_HIGH ; 
 int XLP_GPIO_IRQ_POL_LOW ; 
 int XLP_GPIO_IRQ_TYPE_EDGE ; 
 int XLP_GPIO_IRQ_TYPE_LVL ; 
 struct xlp_gpio_priv* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *gc  = FUNC1(d);
	struct xlp_gpio_priv *priv = FUNC0(gc);
	int pol, irq_type;

	switch (type) {
	case IRQ_TYPE_EDGE_RISING:
		irq_type = XLP_GPIO_IRQ_TYPE_EDGE;
		pol = XLP_GPIO_IRQ_POL_HIGH;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		irq_type = XLP_GPIO_IRQ_TYPE_EDGE;
		pol = XLP_GPIO_IRQ_POL_LOW;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		irq_type = XLP_GPIO_IRQ_TYPE_LVL;
		pol = XLP_GPIO_IRQ_POL_HIGH;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		irq_type = XLP_GPIO_IRQ_TYPE_LVL;
		pol = XLP_GPIO_IRQ_POL_LOW;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(priv->gpio_intr_type, d->hwirq, irq_type);
	FUNC2(priv->gpio_intr_pol, d->hwirq, pol);

	return 0;
}