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
struct heartbeat_trig_data {int /*<<< orphan*/  timer; scalar_t__ phase; struct led_classdev* led_cdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_BLINK_SW ; 
 struct heartbeat_trig_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,struct heartbeat_trig_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct led_classdev *led_cdev)
{
	struct heartbeat_trig_data *heartbeat_data;

	heartbeat_data = FUNC0(sizeof(*heartbeat_data), GFP_KERNEL);
	if (!heartbeat_data)
		return -ENOMEM;

	FUNC2(led_cdev, heartbeat_data);
	heartbeat_data->led_cdev = led_cdev;

	FUNC4(&heartbeat_data->timer, led_heartbeat_function, 0);
	heartbeat_data->phase = 0;
	if (!led_cdev->blink_brightness)
		led_cdev->blink_brightness = led_cdev->max_brightness;
	FUNC1(&heartbeat_data->timer);
	FUNC3(LED_BLINK_SW, &led_cdev->work_flags);

	return 0;
}