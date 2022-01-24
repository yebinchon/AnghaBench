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
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ GPIO_CFG ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 scalar_t__ gpio_reg_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned int offset)
{
	unsigned long flags;

	FUNC3(&gc->bgpio_lock, flags);
	FUNC2(FUNC1(gpio_reg_base + GPIO_CFG) | FUNC0(offset),
		     gpio_reg_base + GPIO_CFG);
	FUNC4(&gc->bgpio_lock, flags);

	return 0;
}