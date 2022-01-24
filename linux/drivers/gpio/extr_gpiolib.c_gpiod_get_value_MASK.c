#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gpio_desc {int /*<<< orphan*/  flags; TYPE_2__* gdev; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct TYPE_3__ {int /*<<< orphan*/  can_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_ACTIVE_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gpio_desc const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(const struct gpio_desc *desc)
{
	int value;

	FUNC0(desc);
	/* Should be using gpiod_get_value_cansleep() */
	FUNC1(desc->gdev->chip->can_sleep);

	value = FUNC2(desc);
	if (value < 0)
		return value;

	if (FUNC3(FLAG_ACTIVE_LOW, &desc->flags))
		value = !value;

	return value;
}