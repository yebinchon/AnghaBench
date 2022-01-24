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
struct pl061 {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned int) ; 
 scalar_t__ GPIODIR ; 
 struct pl061* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gc, unsigned offset,
		int value)
{
	struct pl061 *pl061 = FUNC1(gc);
	unsigned long flags;
	unsigned char gpiodir;

	FUNC2(&pl061->lock, flags);
	FUNC5(!!value << offset, pl061->base + (FUNC0(offset + 2)));
	gpiodir = FUNC4(pl061->base + GPIODIR);
	gpiodir |= FUNC0(offset);
	FUNC5(gpiodir, pl061->base + GPIODIR);

	/*
	 * gpio value is set again, because pl061 doesn't allow to set value of
	 * a gpio pin before configuring it in OUT mode.
	 */
	FUNC5(!!value << offset, pl061->base + (FUNC0(offset + 2)));
	FUNC3(&pl061->lock, flags);

	return 0;
}