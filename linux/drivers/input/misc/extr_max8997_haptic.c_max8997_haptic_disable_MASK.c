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
struct max8997_haptic {int enabled; scalar_t__ mode; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regulator; int /*<<< orphan*/  pwm; } ;

/* Variables and functions */
 scalar_t__ MAX8997_EXTERNAL_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct max8997_haptic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct max8997_haptic *chip)
{
	FUNC1(&chip->mutex);

	if (chip->enabled) {
		chip->enabled = false;
		FUNC0(chip);
		if (chip->mode == MAX8997_EXTERNAL_MODE)
			FUNC3(chip->pwm);
		FUNC4(chip->regulator);
	}

	FUNC2(&chip->mutex);
}