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
struct max77693_sub_led {int /*<<< orphan*/  flash_timeout; } ;
struct max77693_led_device {int /*<<< orphan*/  lock; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 struct max77693_sub_led* FUNC0 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct max77693_led_device* FUNC3 (struct max77693_sub_led*) ; 

__attribute__((used)) static int FUNC4(
				struct led_classdev_flash *fled_cdev,
				u32 timeout)
{
	struct max77693_sub_led *sub_led = FUNC0(fled_cdev);
	struct max77693_led_device *led = FUNC3(sub_led);

	FUNC1(&led->lock);
	sub_led->flash_timeout = timeout;
	FUNC2(&led->lock);

	return 0;
}