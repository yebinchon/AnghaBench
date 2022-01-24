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
typedef  int u32 ;
struct timbgpio {unsigned int membase; int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct timbgpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gpio, unsigned index,
	unsigned offset, bool enabled)
{
	struct timbgpio *tgpio = FUNC0(gpio);
	u32 reg;

	FUNC3(&tgpio->lock);
	reg = FUNC1(tgpio->membase + offset);

	if (enabled)
		reg |= (1 << index);
	else
		reg &= ~(1 << index);

	FUNC2(reg, tgpio->membase + offset);
	FUNC4(&tgpio->lock);

	return 0;
}