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
 int /*<<< orphan*/  LED_BLINK_INVERT ; 
 int /*<<< orphan*/  LED_BLINK_ONESHOT ; 
 int /*<<< orphan*/  LED_BLINK_ONESHOT_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct led_classdev *led_cdev,
			   unsigned long *delay_on,
			   unsigned long *delay_off,
			   int invert)
{
	if (FUNC3(LED_BLINK_ONESHOT, &led_cdev->work_flags) &&
	     FUNC4(&led_cdev->blink_timer))
		return;

	FUNC2(LED_BLINK_ONESHOT, &led_cdev->work_flags);
	FUNC0(LED_BLINK_ONESHOT_STOP, &led_cdev->work_flags);

	if (invert)
		FUNC2(LED_BLINK_INVERT, &led_cdev->work_flags);
	else
		FUNC0(LED_BLINK_INVERT, &led_cdev->work_flags);

	FUNC1(led_cdev, delay_on, delay_off);
}