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
struct led_classdev {int /*<<< orphan*/  work_flags; scalar_t__ max_brightness; scalar_t__ blink_brightness; } ;
struct activity_data {int /*<<< orphan*/  timer; struct led_classdev* led_cdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_BLINK_SW ; 
 struct activity_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,struct activity_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct led_classdev *led_cdev)
{
	struct activity_data *activity_data;

	activity_data = FUNC0(sizeof(*activity_data), GFP_KERNEL);
	if (!activity_data)
		return -ENOMEM;

	FUNC2(led_cdev, activity_data);

	activity_data->led_cdev = led_cdev;
	FUNC4(&activity_data->timer, led_activity_function, 0);
	if (!led_cdev->blink_brightness)
		led_cdev->blink_brightness = led_cdev->max_brightness;
	FUNC1(&activity_data->timer);
	FUNC3(LED_BLINK_SW, &led_cdev->work_flags);

	return 0;
}