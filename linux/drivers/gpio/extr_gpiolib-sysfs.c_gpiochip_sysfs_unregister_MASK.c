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
struct gpio_device {struct gpio_desc* descs; int /*<<< orphan*/ * mockdev; struct gpio_chip* chip; } ;
struct gpio_desc {int /*<<< orphan*/  flags; } ;
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_SYSFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_lock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct gpio_device *gdev)
{
	struct gpio_desc *desc;
	struct gpio_chip *chip = gdev->chip;
	unsigned int i;

	if (!gdev->mockdev)
		return;

	FUNC0(gdev->mockdev);

	/* prevent further gpiod exports */
	FUNC2(&sysfs_lock);
	gdev->mockdev = NULL;
	FUNC3(&sysfs_lock);

	/* unregister gpiod class devices owned by sysfs */
	for (i = 0; i < chip->ngpio; i++) {
		desc = &gdev->descs[i];
		if (FUNC4(FLAG_SYSFS, &desc->flags))
			FUNC1(desc);
	}
}