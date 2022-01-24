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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct wm8350_led {int value; int max_uA_index; TYPE_1__ cdev; int /*<<< orphan*/  isink; int /*<<< orphan*/  value_lock; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int LED_FULL ; 
 int LED_OFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * isink_cur ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct wm8350_led* FUNC6 (struct led_classdev*) ; 
 int FUNC7 (struct wm8350_led*) ; 
 int FUNC8 (struct wm8350_led*) ; 

__attribute__((used)) static int FUNC9(struct led_classdev *led_cdev,
			   enum led_brightness value)
{
	struct wm8350_led *led = FUNC6(led_cdev);
	unsigned long flags;
	int ret;
	int uA;

	led->value = value;

	FUNC4(&led->value_lock, flags);

	if (led->value == LED_OFF) {
		FUNC5(&led->value_lock, flags);
		return FUNC7(led);
	}

	/* This scales linearly into the index of valid current
	 * settings which results in a linear scaling of perceived
	 * brightness due to the non-linear current settings provided
	 * by the hardware.
	 */
	uA = (led->max_uA_index * led->value) / LED_FULL;
	FUNC5(&led->value_lock, flags);
	FUNC1(uA >= FUNC0(isink_cur));

	ret = FUNC3(led->isink, isink_cur[uA],
					  isink_cur[uA]);
	if (ret != 0) {
		FUNC2(led->cdev.dev, "Failed to set %duA: %d\n",
			isink_cur[uA], ret);
		return ret;
	}

	return FUNC8(led);
}