#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int ngpio; } ;
struct lp_gpio {TYPE_1__ chip; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP_INT_ENABLE ; 
 int /*<<< orphan*/  LP_INT_STAT ; 
 struct lp_gpio* FUNC0 (struct gpio_chip*) ; 
 unsigned long FUNC1 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip)
{
	struct lp_gpio *lg = FUNC0(chip);
	unsigned long reg;
	unsigned base;

	for (base = 0; base < lg->chip.ngpio; base += 32) {
		/* disable gpio pin interrupts */
		reg = FUNC1(&lg->chip, base, LP_INT_ENABLE);
		FUNC2(0, reg);
		/* Clear interrupt status register */
		reg = FUNC1(&lg->chip, base, LP_INT_STAT);
		FUNC2(0xffffffff, reg);
	}

	return 0;
}