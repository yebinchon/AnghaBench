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
typedef  int /*<<< orphan*/  u32 ;
struct lm3601x_led {int /*<<< orphan*/  lock; int /*<<< orphan*/  flash_timeout; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 struct lm3601x_led* FUNC0 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct led_classdev_flash *fled_cdev,
				u32 timeout)
{
	struct lm3601x_led *led = FUNC0(fled_cdev);

	FUNC1(&led->lock);

	led->flash_timeout = timeout;

	FUNC2(&led->lock);

	return 0;
}