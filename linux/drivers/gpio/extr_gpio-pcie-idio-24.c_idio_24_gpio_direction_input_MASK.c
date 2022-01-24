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
struct idio_24_gpio {int /*<<< orphan*/  lock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 struct idio_24_gpio* FUNC1 (struct gpio_chip*) ; 
 unsigned long const FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
	unsigned int offset)
{
	struct idio_24_gpio *const idio24gpio = FUNC1(chip);
	unsigned long flags;
	unsigned int ctl_state;
	const unsigned long out_mode_mask = FUNC0(1);

	/* TTL/CMOS I/O */
	if (offset > 47) {
		FUNC4(&idio24gpio->lock, flags);

		/* Clear TTL/CMOS Output Mode */
		ctl_state = FUNC2(&idio24gpio->reg->ctl) & ~out_mode_mask;
		FUNC3(ctl_state, &idio24gpio->reg->ctl);

		FUNC5(&idio24gpio->lock, flags);
	}

	return 0;
}