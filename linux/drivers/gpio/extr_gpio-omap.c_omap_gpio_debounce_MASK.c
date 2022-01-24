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
struct gpio_chip {int /*<<< orphan*/  parent; } ;
struct gpio_bank {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int) ; 
 struct gpio_bank* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct gpio_bank*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset,
			      unsigned debounce)
{
	struct gpio_bank *bank;
	unsigned long flags;
	int ret;

	bank = FUNC1(chip);

	FUNC3(&bank->lock, flags);
	ret = FUNC2(bank, offset, debounce);
	FUNC4(&bank->lock, flags);

	if (ret)
		FUNC0(chip->parent,
			 "Could not set line %u debounce to %u microseconds (%d)",
			 offset, debounce, ret);

	return ret;
}