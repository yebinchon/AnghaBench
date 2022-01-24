#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct gpio_device {struct device* mockdev; struct device dev; struct gpio_chip* chip; } ;
struct gpio_chip {int /*<<< orphan*/  base; struct device* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 struct device* FUNC3 (TYPE_1__*,struct device*,int /*<<< orphan*/ ,struct gpio_chip*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ gpio_class ; 
 int /*<<< orphan*/  gpiochip_groups ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_lock ; 

int FUNC6(struct gpio_device *gdev)
{
	struct device	*dev;
	struct device	*parent;
	struct gpio_chip *chip = gdev->chip;

	/*
	 * Many systems add gpio chips for SOC support very early,
	 * before driver model support is available.  In those cases we
	 * register later, in gpiolib_sysfs_init() ... here we just
	 * verify that _some_ field of gpio_class got initialized.
	 */
	if (!gpio_class.p)
		return 0;

	/*
	 * For sysfs backward compatibility we need to preserve this
	 * preferred parenting to the gpio_chip parent field, if set.
	 */
	if (chip->parent)
		parent = chip->parent;
	else
		parent = &gdev->dev;

	/* use chip->base for the ID; it's already known to be unique */
	dev = FUNC3(&gpio_class, parent,
					FUNC1(0, 0),
					chip, gpiochip_groups,
					"gpiochip%d", chip->base);
	if (FUNC0(dev))
		return FUNC2(dev);

	FUNC4(&sysfs_lock);
	gdev->mockdev = dev;
	FUNC5(&sysfs_lock);

	return 0;
}