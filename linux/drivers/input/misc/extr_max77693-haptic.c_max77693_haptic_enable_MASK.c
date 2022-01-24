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
struct max77693_haptic {int enabled; int /*<<< orphan*/  pwm_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct max77693_haptic*,int) ; 
 int FUNC2 (struct max77693_haptic*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct max77693_haptic *haptic)
{
	int error;

	if (haptic->enabled)
		return;

	error = FUNC4(haptic->pwm_dev);
	if (error) {
		FUNC0(haptic->dev,
			"failed to enable haptic pwm device: %d\n", error);
		return;
	}

	error = FUNC2(haptic, true);
	if (error)
		goto err_enable_lowsys;

	error = FUNC1(haptic, true);
	if (error)
		goto err_enable_config;

	haptic->enabled = true;

	return;

err_enable_config:
	FUNC2(haptic, false);
err_enable_lowsys:
	FUNC3(haptic->pwm_dev);
}