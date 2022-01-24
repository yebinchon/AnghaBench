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
struct gpio_bank {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_usage; int /*<<< orphan*/  mod_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct gpio_bank* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_bank*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct gpio_chip *chip, unsigned offset)
{
	struct gpio_bank *bank = FUNC2(chip);
	unsigned long flags;

	FUNC7(&bank->lock, flags);
	bank->mod_usage &= ~(FUNC0(offset));
	if (!FUNC1(bank->irq_usage, offset)) {
		FUNC5(bank, offset, 1);
		FUNC3(bank, offset);
	}
	FUNC4(bank, offset);
	FUNC8(&bank->lock, flags);

	FUNC6(chip->parent);
}