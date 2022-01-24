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
struct winbond_gpio_info {int /*<<< orphan*/  ioreg; int /*<<< orphan*/  dev; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 unsigned long* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,struct winbond_gpio_info const**) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gc, unsigned int offset)
{
	unsigned long *base = FUNC0(gc);
	const struct winbond_gpio_info *info;
	int ret;

	if (!FUNC1(&offset, &info))
		return -EACCES;

	ret = FUNC2(*base);
	if (ret)
		return ret;

	FUNC5(*base, info->dev);

	FUNC4(*base, info->ioreg, offset);

	FUNC3(*base);

	return 0;
}