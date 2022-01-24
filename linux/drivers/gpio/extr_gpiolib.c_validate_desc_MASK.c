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
struct gpio_desc {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct gpio_desc const*) ; 
 int FUNC1 (struct gpio_desc const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int FUNC4(const struct gpio_desc *desc, const char *func)
{
	if (!desc)
		return 0;
	if (FUNC0(desc)) {
		FUNC3("%s: invalid GPIO (errorpointer)\n", func);
		return FUNC1(desc);
	}
	if (!desc->gdev) {
		FUNC3("%s: invalid GPIO (no device)\n", func);
		return -EINVAL;
	}
	if (!desc->gdev->chip) {
		FUNC2(&desc->gdev->dev,
			 "%s: backing chip is gone\n", func);
		return 0;
	}
	return 1;
}