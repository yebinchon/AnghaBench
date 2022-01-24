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
struct tc3589x_gpio {int** regs; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 size_t REG_IBE ; 
 size_t REG_IEV ; 
 size_t REG_IS ; 
 struct tc3589x_gpio* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *gc = FUNC2(d);
	struct tc3589x_gpio *tc3589x_gpio = FUNC1(gc);
	int offset = d->hwirq;
	int regoffset = offset / 8;
	int mask = FUNC0(offset % 8);

	if (type == IRQ_TYPE_EDGE_BOTH) {
		tc3589x_gpio->regs[REG_IBE][regoffset] |= mask;
		return 0;
	}

	tc3589x_gpio->regs[REG_IBE][regoffset] &= ~mask;

	if (type == IRQ_TYPE_LEVEL_LOW || type == IRQ_TYPE_LEVEL_HIGH)
		tc3589x_gpio->regs[REG_IS][regoffset] |= mask;
	else
		tc3589x_gpio->regs[REG_IS][regoffset] &= ~mask;

	if (type == IRQ_TYPE_EDGE_RISING || type == IRQ_TYPE_LEVEL_HIGH)
		tc3589x_gpio->regs[REG_IEV][regoffset] |= mask;
	else
		tc3589x_gpio->regs[REG_IEV][regoffset] &= ~mask;

	return 0;
}