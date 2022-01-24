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
struct gpio_descs {int dummy; } ;
struct device {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct gpio_descs*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_descs*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,int,...) ; 
 struct gpio_descs* FUNC3 (struct device*,char const*,int) ; 
 int FUNC4 (struct device*,char const*) ; 

__attribute__((used)) static struct gpio_descs *FUNC5(
				struct device *dev, const char *con_id,
				enum gpiod_flags flags, unsigned int expected)
{
	struct gpio_descs *descs;
	int found = FUNC4(dev, con_id);

	if (found == -ENOENT)
		return NULL;

	if (found != expected && found != 1) {
		FUNC2(dev, "ignoring %s-gpios: found %d, expected %u or 1\n",
			con_id, found, expected);
		return NULL;
	}

	descs = FUNC3(dev, con_id, flags);

	if (FUNC0(descs)) {
		FUNC2(dev, "failed to get %s-gpios: %ld\n",
			con_id, FUNC1(descs));
		return NULL;
	}

	return descs;
}