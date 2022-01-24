#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct led_classdev {TYPE_1__* dev; } ;
struct hid_device {int dummy; } ;
struct gt683r_led {int* brightnesses; int /*<<< orphan*/  work; struct led_classdev* led_devs; } ;
struct device {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 int GT683R_LED_COUNT ; 
 struct gt683r_led* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct led_classdev *led_cdev,
				enum led_brightness brightness)
{
	int i;
	struct device *dev = led_cdev->dev->parent;
	struct hid_device *hdev = FUNC2(dev);
	struct gt683r_led *led = FUNC0(hdev);

	for (i = 0; i < GT683R_LED_COUNT; i++) {
		if (led_cdev == &led->led_devs[i])
			break;
	}

	if (i < GT683R_LED_COUNT) {
		led->brightnesses[i] = brightness;
		FUNC1(&led->work);
	}
}