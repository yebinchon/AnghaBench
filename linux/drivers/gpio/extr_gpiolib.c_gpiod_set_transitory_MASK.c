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
struct gpio_desc {TYPE_1__* gdev; int /*<<< orphan*/  flags; } ;
struct gpio_chip {int (* set_config ) (struct gpio_chip*,int,unsigned long) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct gpio_chip* chip; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FLAG_TRANSITORY ; 
 int /*<<< orphan*/  PIN_CONFIG_PERSIST_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct gpio_desc*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct gpio_chip*,int,unsigned long) ; 

int FUNC7(struct gpio_desc *desc, bool transitory)
{
	struct gpio_chip *chip;
	unsigned long packed;
	int gpio;
	int rc;

	FUNC0(desc);
	/*
	 * Handle FLAG_TRANSITORY first, enabling queries to gpiolib for
	 * persistence state.
	 */
	if (transitory)
		FUNC5(FLAG_TRANSITORY, &desc->flags);
	else
		FUNC1(FLAG_TRANSITORY, &desc->flags);

	/* If the driver supports it, set the persistence state now */
	chip = desc->gdev->chip;
	if (!chip->set_config)
		return 0;

	packed = FUNC4(PIN_CONFIG_PERSIST_STATE,
					  !transitory);
	gpio = FUNC3(desc);
	rc = chip->set_config(chip, gpio, packed);
	if (rc == -ENOTSUPP) {
		FUNC2(&desc->gdev->dev, "Persistence not supported for GPIO %d\n",
				gpio);
		return 0;
	}

	return rc;
}