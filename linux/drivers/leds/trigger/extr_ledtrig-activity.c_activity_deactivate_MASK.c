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
struct led_classdev {int /*<<< orphan*/  work_flags; } ;
struct activity_data {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_BLINK_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct activity_data*) ; 
 struct activity_data* FUNC3 (struct led_classdev*) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev)
{
	struct activity_data *activity_data = FUNC3(led_cdev);

	FUNC1(&activity_data->timer);
	FUNC2(activity_data);
	FUNC0(LED_BLINK_SW, &led_cdev->work_flags);
}