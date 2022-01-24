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
struct max8997_haptic {int enabled; scalar_t__ mode; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regulator; int /*<<< orphan*/  dev; int /*<<< orphan*/  pwm; } ;

/* Variables and functions */
 scalar_t__ MAX8997_EXTERNAL_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct max8997_haptic*) ; 
 int FUNC2 (struct max8997_haptic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct max8997_haptic *chip)
{
	int error;

	FUNC3(&chip->mutex);

	error = FUNC2(chip);
	if (error) {
		FUNC0(chip->dev, "set_pwm_cycle failed, error: %d\n", error);
		goto out;
	}

	if (!chip->enabled) {
		error = FUNC7(chip->regulator);
		if (error) {
			FUNC0(chip->dev, "Failed to enable regulator\n");
			goto out;
		}
		FUNC1(chip);
		if (chip->mode == MAX8997_EXTERNAL_MODE) {
			error = FUNC5(chip->pwm);
			if (error) {
				FUNC0(chip->dev, "Failed to enable PWM\n");
				FUNC6(chip->regulator);
				goto out;
			}
		}
		chip->enabled = true;
	}

out:
	FUNC4(&chip->mutex);
}