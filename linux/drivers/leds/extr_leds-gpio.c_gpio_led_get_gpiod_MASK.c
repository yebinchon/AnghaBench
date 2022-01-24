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
struct gpio_led {int /*<<< orphan*/  gpio; int /*<<< orphan*/  name; scalar_t__ active_low; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct gpio_desc* FUNC0 (int) ; 
 unsigned long GPIOF_ACTIVE_LOW ; 
 unsigned long GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC4 (struct device*,int /*<<< orphan*/ *,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gpio_desc *FUNC8(struct device *dev, int idx,
					    const struct gpio_led *template)
{
	struct gpio_desc *gpiod;
	unsigned long flags = GPIOF_OUT_INIT_LOW;
	int ret;

	/*
	 * This means the LED does not come from the device tree
	 * or ACPI, so let's try just getting it by index from the
	 * device, this will hit the board file, if any and get
	 * the GPIO from there.
	 */
	gpiod = FUNC4(dev, NULL, idx, flags);
	if (!FUNC1(gpiod)) {
		FUNC7(gpiod, template->name);
		return gpiod;
	}
	if (FUNC2(gpiod) != -ENOENT)
		return gpiod;

	/*
	 * This is the legacy code path for platform code that
	 * still uses GPIO numbers. Ultimately we would like to get
	 * rid of this block completely.
	 */

	/* skip leds that aren't available */
	if (!FUNC5(template->gpio))
		return FUNC0(-ENOENT);

	if (template->active_low)
		flags |= GPIOF_ACTIVE_LOW;

	ret = FUNC3(dev, template->gpio, flags,
				    template->name);
	if (ret < 0)
		return FUNC0(ret);

	gpiod = FUNC6(template->gpio);
	if (!gpiod)
		return FUNC0(-EINVAL);

	return gpiod;
}