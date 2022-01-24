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
typedef  int /*<<< orphan*/  u16 ;
struct gpio_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;
typedef  enum gpio_lookup_flags { ____Placeholder_gpio_lookup_flags } gpio_lookup_flags ;

/* Variables and functions */
 struct gpio_desc* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,char*,...) ; 
 struct gpio_desc* FUNC3 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gpio_desc*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_desc*) ; 
 int FUNC6 (struct gpio_desc*,char const*) ; 

struct gpio_desc *FUNC7(struct gpio_chip *chip, u16 hwnum,
					    const char *label,
					    enum gpio_lookup_flags lflags,
					    enum gpiod_flags dflags)
{
	struct gpio_desc *desc = FUNC3(chip, hwnum);
	int ret;

	if (FUNC1(desc)) {
		FUNC2(chip, "failed to get GPIO descriptor\n");
		return desc;
	}

	ret = FUNC6(desc, label);
	if (ret < 0)
		return FUNC0(ret);

	ret = FUNC4(desc, label, lflags, dflags);
	if (ret) {
		FUNC2(chip, "setup of own GPIO %s failed\n", label);
		FUNC5(desc);
		return FUNC0(ret);
	}

	return desc;
}