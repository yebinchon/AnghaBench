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
struct gpio_chip {int /*<<< orphan*/  (* write_reg ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct mpc8xxx_gpio_chip {scalar_t__ regs; struct gpio_chip gc; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ GPIO_IER ; 
 struct mpc8xxx_gpio_chip* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC0(d);
	struct gpio_chip *gc = &mpc8xxx_gc->gc;

	gc->write_reg(mpc8xxx_gc->regs + GPIO_IER,
		      FUNC2(FUNC1(d)));
}