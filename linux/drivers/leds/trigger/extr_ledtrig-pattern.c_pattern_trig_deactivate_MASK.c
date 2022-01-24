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
struct pattern_trig_data {int /*<<< orphan*/  timer; } ;
struct led_classdev {int activated; int /*<<< orphan*/  (* pattern_clear ) (struct led_classdev*) ;struct pattern_trig_data* trigger_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pattern_trig_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev)
{
	struct pattern_trig_data *data = led_cdev->trigger_data;

	if (!led_cdev->activated)
		return;

	if (led_cdev->pattern_clear)
		led_cdev->pattern_clear(led_cdev);

	FUNC0(&data->timer);

	FUNC2(led_cdev, LED_OFF);
	FUNC1(data);
	led_cdev->activated = false;
}