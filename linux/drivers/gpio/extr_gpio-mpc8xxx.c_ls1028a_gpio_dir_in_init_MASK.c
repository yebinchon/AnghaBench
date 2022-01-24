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
struct mpc8xxx_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; int /*<<< orphan*/  (* write_reg ) (scalar_t__,int) ;} ;

/* Variables and functions */
 scalar_t__ GPIO_IBE ; 
 struct mpc8xxx_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc)
{
	unsigned long flags;
	struct mpc8xxx_gpio_chip *mpc8xxx_gc = FUNC0(gc);

	FUNC1(&gc->bgpio_lock, flags);

	gc->write_reg(mpc8xxx_gc->regs + GPIO_IBE, 0xffffffff);

	FUNC2(&gc->bgpio_lock, flags);

	return 0;
}