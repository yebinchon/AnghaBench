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
struct led_classdev {int /*<<< orphan*/  dev; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  applesmc_led_wq ; 
 int* backlight_state ; 
 int /*<<< orphan*/  backlight_work ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct led_classdev *led_cdev,
						enum led_brightness value)
{
	int ret;

	backlight_state[0] = value;
	ret = FUNC1(applesmc_led_wq, &backlight_work);

	if (debug && (!ret))
		FUNC0(led_cdev->dev, "work was already on the queue.\n");
}