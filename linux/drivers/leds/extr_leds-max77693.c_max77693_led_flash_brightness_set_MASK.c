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
struct max77693_sub_led {int /*<<< orphan*/  fled_id; } ;
struct max77693_led_device {int /*<<< orphan*/  lock; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 struct max77693_sub_led* FUNC0 (struct led_classdev_flash*) ; 
 int FUNC1 (struct max77693_led_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct max77693_led_device* FUNC4 (struct max77693_sub_led*) ; 

__attribute__((used)) static int FUNC5(
				struct led_classdev_flash *fled_cdev,
				u32 brightness)
{
	struct max77693_sub_led *sub_led = FUNC0(fled_cdev);
	struct max77693_led_device *led = FUNC4(sub_led);
	int ret;

	FUNC2(&led->lock);
	ret = FUNC1(led, sub_led->fled_id, brightness);
	FUNC3(&led->lock);

	return ret;
}