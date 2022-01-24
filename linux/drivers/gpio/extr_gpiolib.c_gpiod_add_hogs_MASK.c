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
struct gpiod_hog {scalar_t__ chip_label; int /*<<< orphan*/  list; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct gpio_chip* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  gpio_machine_hogs ; 
 int /*<<< orphan*/  gpio_machine_hogs_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,struct gpiod_hog*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct gpiod_hog *hogs)
{
	struct gpio_chip *chip;
	struct gpiod_hog *hog;

	FUNC3(&gpio_machine_hogs_mutex);

	for (hog = &hogs[0]; hog->chip_label; hog++) {
		FUNC2(&hog->list, &gpio_machine_hogs);

		/*
		 * The chip may have been registered earlier, so check if it
		 * exists and, if so, try to hog the line now.
		 */
		chip = FUNC0(hog->chip_label);
		if (chip)
			FUNC1(chip, hog);
	}

	FUNC4(&gpio_machine_hogs_mutex);
}