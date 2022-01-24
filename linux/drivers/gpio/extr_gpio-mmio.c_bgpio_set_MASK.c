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
struct gpio_chip {unsigned long bgpio_data; int /*<<< orphan*/  bgpio_lock; int /*<<< orphan*/  reg_dat; int /*<<< orphan*/  (* write_reg ) (int /*<<< orphan*/ ,unsigned long) ;} ;

/* Variables and functions */
 unsigned long FUNC0 (struct gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc, unsigned int gpio, int val)
{
	unsigned long mask = FUNC0(gc, gpio);
	unsigned long flags;

	FUNC1(&gc->bgpio_lock, flags);

	if (val)
		gc->bgpio_data |= mask;
	else
		gc->bgpio_data &= ~mask;

	gc->write_reg(gc->reg_dat, gc->bgpio_data);

	FUNC2(&gc->bgpio_lock, flags);
}