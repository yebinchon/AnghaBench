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
struct led_classdev {int /*<<< orphan*/  work_flags; int /*<<< orphan*/  blink_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_BLINK_ONESHOT ; 
 int /*<<< orphan*/  LED_BLINK_ONESHOT_STOP ; 
 int /*<<< orphan*/  LED_BLINK_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,unsigned long*,unsigned long*) ; 

void FUNC3(struct led_classdev *led_cdev,
		   unsigned long *delay_on,
		   unsigned long *delay_off)
{
	FUNC1(&led_cdev->blink_timer);

	FUNC0(LED_BLINK_SW, &led_cdev->work_flags);
	FUNC0(LED_BLINK_ONESHOT, &led_cdev->work_flags);
	FUNC0(LED_BLINK_ONESHOT_STOP, &led_cdev->work_flags);

	FUNC2(led_cdev, delay_on, delay_off);
}