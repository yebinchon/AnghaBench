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
typedef  int u32 ;
struct pch_gpio {size_t ioh; int /*<<< orphan*/  spinlock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pm; } ;

/* Variables and functions */
 int* gpio_pins ; 
 struct pch_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gpio, unsigned nr)
{
	struct pch_gpio *chip =	FUNC0(gpio);
	u32 pm;
	unsigned long flags;

	FUNC3(&chip->spinlock, flags);
	pm = FUNC1(&chip->reg->pm) & ((1 << gpio_pins[chip->ioh]) - 1);
	pm &= ~(1 << nr);
	FUNC2(pm, &chip->reg->pm);
	FUNC4(&chip->spinlock, flags);

	return 0;
}