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
struct gpio_device {unsigned int ngpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  chrdev; struct gpio_desc* descs; int /*<<< orphan*/ * data; int /*<<< orphan*/ * chip; } ;
struct gpio_desc {int /*<<< orphan*/  flags; } ;
struct gpio_chip {struct gpio_device* gpiodev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct gpio_chip *chip)
{
	struct gpio_device *gdev = chip->gpiodev;
	struct gpio_desc *desc;
	unsigned long	flags;
	unsigned	i;
	bool		requested = false;

	/* FIXME: should the legacy sysfs handling be moved to gpio_device? */
	FUNC7(gdev);
	FUNC3(chip);
	/* Numb the device, cancelling all outstanding operations */
	gdev->chip = NULL;
	FUNC5(chip);
	FUNC0(chip);
	FUNC6(chip);
	FUNC8(chip);
	FUNC4(chip);
	/*
	 * We accept no more calls into the driver from this point, so
	 * NULL the driver data pointer
	 */
	gdev->data = NULL;

	FUNC10(&gpio_lock, flags);
	for (i = 0; i < gdev->ngpio; i++) {
		desc = &gdev->descs[i];
		if (FUNC12(FLAG_REQUESTED, &desc->flags))
			requested = true;
	}
	FUNC11(&gpio_lock, flags);

	if (requested)
		FUNC2(&gdev->dev,
			 "REMOVING GPIOCHIP WITH GPIOS STILL REQUESTED\n");

	/*
	 * The gpiochip side puts its use of the device to rest here:
	 * if there are no userspace clients, the chardev and device will
	 * be removed, else it will be dangling until the last user is
	 * gone.
	 */
	FUNC1(&gdev->chrdev, &gdev->dev);
	FUNC9(&gdev->dev);
}