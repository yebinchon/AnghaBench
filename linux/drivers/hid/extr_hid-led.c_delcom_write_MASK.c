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
struct led_classdev {int dummy; } ;
struct hidled_led {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int FUNC0 (struct hidled_led*) ; 
 int FUNC1 (struct hidled_led*) ; 
 struct hidled_led* FUNC2 (struct led_classdev*) ; 

__attribute__((used)) static int FUNC3(struct led_classdev *cdev, enum led_brightness br)
{
	struct hidled_led *led = FUNC2(cdev);
	int ret;

	/*
	 * enable LED
	 * We can't do this in the init function already because the device
	 * is internally reset later.
	 */
	ret = FUNC0(led);
	if (ret)
		return ret;

	return FUNC1(led);
}