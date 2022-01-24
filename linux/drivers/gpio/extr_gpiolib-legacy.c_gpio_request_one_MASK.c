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
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FLAG_ACTIVE_LOW ; 
 int /*<<< orphan*/  FLAG_OPEN_DRAIN ; 
 int /*<<< orphan*/  FLAG_OPEN_SOURCE ; 
 unsigned long GPIOF_ACTIVE_LOW ; 
 unsigned long GPIOF_DIR_IN ; 
 unsigned long GPIOF_EXPORT ; 
 unsigned long GPIOF_EXPORT_CHANGEABLE ; 
 unsigned long GPIOF_INIT_HIGH ; 
 unsigned long GPIOF_OPEN_DRAIN ; 
 unsigned long GPIOF_OPEN_SOURCE ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 struct gpio_desc* FUNC1 (unsigned int) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int FUNC3 (struct gpio_desc*,int) ; 
 int FUNC4 (struct gpio_desc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_desc*) ; 
 int FUNC6 (struct gpio_desc*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(unsigned gpio, unsigned long flags, const char *label)
{
	struct gpio_desc *desc;
	int err;

	desc = FUNC1(gpio);

	/* Compatibility: assume unavailable "valid" GPIOs will appear later */
	if (!desc && FUNC0(gpio))
		return -EPROBE_DEFER;

	err = FUNC6(desc, label);
	if (err)
		return err;

	if (flags & GPIOF_OPEN_DRAIN)
		FUNC7(FLAG_OPEN_DRAIN, &desc->flags);

	if (flags & GPIOF_OPEN_SOURCE)
		FUNC7(FLAG_OPEN_SOURCE, &desc->flags);

	if (flags & GPIOF_ACTIVE_LOW)
		FUNC7(FLAG_ACTIVE_LOW, &desc->flags);

	if (flags & GPIOF_DIR_IN)
		err = FUNC2(desc);
	else
		err = FUNC3(desc,
				(flags & GPIOF_INIT_HIGH) ? 1 : 0);

	if (err)
		goto free_gpio;

	if (flags & GPIOF_EXPORT) {
		err = FUNC4(desc, flags & GPIOF_EXPORT_CHANGEABLE);
		if (err)
			goto free_gpio;
	}

	return 0;

 free_gpio:
	FUNC5(desc);
	return err;
}