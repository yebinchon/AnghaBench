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
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pm_base; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int ENXIO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gpio_chip*,unsigned int) ; 
 TYPE_1__ ichx_priv ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned nr)
{
	unsigned long flags;
	u32 data;

	/*
	 * GPI 0 - 15 need to be read from the power management registers on
	 * a ICH6/3100 bridge.
	 */
	if (nr < 16) {
		if (!ichx_priv.pm_base)
			return -ENXIO;

		FUNC4(&ichx_priv.lock, flags);

		/* GPI 0 - 15 are latched, write 1 to clear*/
		FUNC2(FUNC0(16 + nr), 0, ichx_priv.pm_base);
		data = FUNC1(0, ichx_priv.pm_base);

		FUNC5(&ichx_priv.lock, flags);

		return !!((data >> 16) & FUNC0(nr));
	} else {
		return FUNC3(chip, nr);
	}
}