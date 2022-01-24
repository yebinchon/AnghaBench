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
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,int) ; 
 struct gpio_desc* FUNC3 (struct device*,char const*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct gpio_desc **gpio_d,
			     const char *con_id, enum gpiod_flags flags)
{
	int error;

	*gpio_d = FUNC3(dev, con_id, flags);
	if (FUNC0(*gpio_d)) {
		error = FUNC1(*gpio_d);
		FUNC2(dev, "Could not get gpio_%s %d\n", con_id, error);
		return error;
	}

	return 0;
}