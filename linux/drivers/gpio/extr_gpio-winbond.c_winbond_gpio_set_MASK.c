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
struct winbond_gpio_info {int /*<<< orphan*/  datareg; int /*<<< orphan*/  invreg; int /*<<< orphan*/  dev; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned long* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,struct winbond_gpio_info const**) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct gpio_chip *gc, unsigned int offset,
			     int val)
{
	unsigned long *base = FUNC0(gc);
	const struct winbond_gpio_info *info;

	if (!FUNC1(&offset, &info))
		return;

	if (FUNC2(*base) != 0)
		return;

	FUNC7(*base, info->dev);

	if (FUNC6(*base, info->invreg, offset))
		val = !val;

	if (val)
		FUNC5(*base, info->datareg, offset);
	else
		FUNC4(*base, info->datareg, offset);

	FUNC3(*base);
}