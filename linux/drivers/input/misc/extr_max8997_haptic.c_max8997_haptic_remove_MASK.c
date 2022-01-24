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
struct platform_device {int dummy; } ;
struct max8997_haptic {scalar_t__ mode; int /*<<< orphan*/  pwm; int /*<<< orphan*/  regulator; int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 scalar_t__ MAX8997_EXTERNAL_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct max8997_haptic*) ; 
 struct max8997_haptic* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct max8997_haptic *chip = FUNC2(pdev);

	FUNC0(chip->input_dev);
	FUNC4(chip->regulator);

	if (chip->mode == MAX8997_EXTERNAL_MODE)
		FUNC3(chip->pwm);

	FUNC1(chip);

	return 0;
}