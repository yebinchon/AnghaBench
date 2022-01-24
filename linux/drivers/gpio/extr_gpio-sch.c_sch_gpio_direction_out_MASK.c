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
struct sch_gpio {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIO ; 
 struct sch_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct sch_gpio*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned gpio_num,
				  int val)
{
	struct sch_gpio *sch = FUNC0(gc);

	FUNC3(&sch->lock);
	FUNC1(sch, gpio_num, GIO, 0);
	FUNC4(&sch->lock);

	/*
	 * according to the datasheet, writing to the level register has no
	 * effect when GPIO is programmed as input.
	 * Actually the the level register is read-only when configured as input.
	 * Thus presetting the output level before switching to output is _NOT_ possible.
	 * Hence we set the level after configuring the GPIO as output.
	 * But we cannot prevent a short low pulse if direction is set to high
	 * and an external pull-up is connected.
	 */
	FUNC2(gc, gpio_num, val);
	return 0;
}