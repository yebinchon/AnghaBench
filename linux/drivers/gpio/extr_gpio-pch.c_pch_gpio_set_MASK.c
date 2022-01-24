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
struct pch_gpio {int /*<<< orphan*/  spinlock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  po; } ;

/* Variables and functions */
 struct pch_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *gpio, unsigned nr, int val)
{
	u32 reg_val;
	struct pch_gpio *chip =	FUNC0(gpio);
	unsigned long flags;

	FUNC3(&chip->spinlock, flags);
	reg_val = FUNC1(&chip->reg->po);
	if (val)
		reg_val |= (1 << nr);
	else
		reg_val &= ~(1 << nr);

	FUNC2(reg_val, &chip->reg->po);
	FUNC4(&chip->spinlock, flags);
}