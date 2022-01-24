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
struct led_flash_setting {int /*<<< orphan*/  val; } ;
struct led_classdev {int flags; } ;
struct led_classdev_flash {struct led_flash_setting brightness; struct led_classdev led_cdev; } ;

/* Variables and functions */
 int LED_SUSPENDED ; 
 int FUNC0 (struct led_classdev_flash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flash_brightness_set ; 
 int /*<<< orphan*/  FUNC1 (struct led_flash_setting*) ; 

int FUNC2(struct led_classdev_flash *fled_cdev,
				u32 brightness)
{
	struct led_classdev *led_cdev = &fled_cdev->led_cdev;
	struct led_flash_setting *s = &fled_cdev->brightness;

	s->val = brightness;
	FUNC1(s);

	if (!(led_cdev->flags & LED_SUSPENDED))
		return FUNC0(fled_cdev, flash_brightness_set, s->val);

	return 0;
}