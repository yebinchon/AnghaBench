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
struct gpio_bank {int /*<<< orphan*/  lock; int /*<<< orphan*/  mod_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct gpio_bank* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset)
{
	struct gpio_bank *bank = FUNC1(chip);
	unsigned long flags;

	FUNC3(chip->parent);

	FUNC4(&bank->lock, flags);
	FUNC2(bank, offset);
	bank->mod_usage |= FUNC0(offset);
	FUNC5(&bank->lock, flags);

	return 0;
}