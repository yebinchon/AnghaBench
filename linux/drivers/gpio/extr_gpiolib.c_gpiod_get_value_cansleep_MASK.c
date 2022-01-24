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
struct gpio_desc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_ACTIVE_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc const*) ; 
 int /*<<< orphan*/  extra_checks ; 
 int FUNC1 (struct gpio_desc const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(const struct gpio_desc *desc)
{
	int value;

	FUNC2(extra_checks);
	FUNC0(desc);
	value = FUNC1(desc);
	if (value < 0)
		return value;

	if (FUNC3(FLAG_ACTIVE_LOW, &desc->flags))
		value = !value;

	return value;
}