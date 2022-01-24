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
struct lp_gpio {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP_CONFIG1 ; 
 int OUT_LVL_BIT ; 
 struct lp_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct gpio_chip *chip, unsigned offset, int value)
{
	struct lp_gpio *lg = FUNC0(chip);
	unsigned long reg = FUNC2(chip, offset, LP_CONFIG1);
	unsigned long flags;

	FUNC4(&lg->lock, flags);

	if (value)
		FUNC3(FUNC1(reg) | OUT_LVL_BIT, reg);
	else
		FUNC3(FUNC1(reg) & ~OUT_LVL_BIT, reg);

	FUNC5(&lg->lock, flags);
}