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
struct mpc8xxx_gpio_chip {scalar_t__ irq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 unsigned int MPC8XXX_GPIO_PINS ; 
 struct mpc8xxx_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC0(gc);

	if (mpc8xxx_gc->irq && offset < MPC8XXX_GPIO_PINS)
		return FUNC1(mpc8xxx_gc->irq, offset);
	else
		return -ENXIO;
}