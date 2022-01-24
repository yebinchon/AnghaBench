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
struct xgene_gpio_sb {scalar_t__ regs; int /*<<< orphan*/  gc; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int GPIO_INT_LEVEL_H ; 
 int GPIO_INT_LEVEL_L ; 
 int FUNC0 (struct xgene_gpio_sb*,int) ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 scalar_t__ MPA_GPIO_INT_LVL ; 
 scalar_t__ MPA_GPIO_SEL_LO ; 
 int FUNC1 (struct irq_data*,int const) ; 
 struct xgene_gpio_sb* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, unsigned int type)
{
	struct xgene_gpio_sb *priv = FUNC2(d);
	int gpio = FUNC0(priv, d->hwirq);
	int lvl_type = GPIO_INT_LEVEL_H;

	switch (type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_EDGE_RISING:
	case IRQ_TYPE_LEVEL_HIGH:
		lvl_type = GPIO_INT_LEVEL_H;
		break;
	case IRQ_TYPE_EDGE_FALLING:
	case IRQ_TYPE_LEVEL_LOW:
		lvl_type = GPIO_INT_LEVEL_L;
		break;
	default:
		break;
	}

	FUNC3(&priv->gc, priv->regs + MPA_GPIO_SEL_LO,
			gpio * 2, 1);
	FUNC3(&priv->gc, priv->regs + MPA_GPIO_INT_LVL,
			d->hwirq, lvl_type);

	/* Propagate IRQ type setting to parent */
	if (type & IRQ_TYPE_EDGE_BOTH)
		return FUNC1(d, IRQ_TYPE_EDGE_RISING);
	else
		return FUNC1(d, IRQ_TYPE_LEVEL_HIGH);
}