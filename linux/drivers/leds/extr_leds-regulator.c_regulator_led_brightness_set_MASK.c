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
struct TYPE_2__ {int max_brightness; int /*<<< orphan*/  dev; } ;
struct regulator_led {int /*<<< orphan*/  mutex; TYPE_1__ cdev; int /*<<< orphan*/  vcc; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator_led*) ; 
 int /*<<< orphan*/  FUNC6 (struct regulator_led*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 struct regulator_led* FUNC8 (struct led_classdev*) ; 

__attribute__((used)) static int FUNC9(struct led_classdev *led_cdev,
					 enum led_brightness value)
{
	struct regulator_led *led = FUNC8(led_cdev);
	int voltage;
	int ret = 0;

	FUNC3(&led->mutex);

	if (value == LED_OFF) {
		FUNC5(led);
		goto out;
	}

	if (led->cdev.max_brightness > 1) {
		voltage = FUNC2(led->vcc, value);
		FUNC0(led->cdev.dev, "brightness: %d voltage: %d\n",
				value, voltage);

		ret = FUNC7(led->vcc, voltage, voltage);
		if (ret != 0)
			FUNC1(led->cdev.dev, "Failed to set voltage %d: %d\n",
				voltage, ret);
	}

	FUNC6(led);

out:
	FUNC4(&led->mutex);
	return ret;
}