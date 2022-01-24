#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; char* default_trigger; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  brightness_get; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_brightness; } ;
struct TYPE_5__ {char* name; } ;
struct wacom_led {unsigned int group; unsigned int id; TYPE_3__ cdev; int /*<<< orphan*/  hlv; int /*<<< orphan*/  llv; struct wacom* wacom; TYPE_2__ trigger; } ;
struct TYPE_4__ {int /*<<< orphan*/  hlv; int /*<<< orphan*/  llv; } ;
struct wacom {int /*<<< orphan*/  hdev; TYPE_1__ led; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_HW_PLUGGABLE ; 
 int /*<<< orphan*/  __wacom_led_brightness_get ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 char* FUNC1 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC2 (struct device*,TYPE_3__*) ; 
 int FUNC3 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  wacom_led_brightness_set ; 
 int /*<<< orphan*/  wacom_led_readonly_brightness_set ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct wacom *wacom,
				  struct wacom_led *led, unsigned int group,
				  unsigned int id, bool read_only)
{
	int error;
	char *name;

	name = FUNC1(dev, GFP_KERNEL,
			      "%s::wacom-%d.%d",
			      FUNC0(dev),
			      group,
			      id);
	if (!name)
		return -ENOMEM;

	if (!read_only) {
		led->trigger.name = name;
		error = FUNC3(dev, &led->trigger);
		if (error) {
			FUNC4(wacom->hdev,
				"failed to register LED trigger %s: %d\n",
				led->cdev.name, error);
			return error;
		}
	}

	led->group = group;
	led->id = id;
	led->wacom = wacom;
	led->llv = wacom->led.llv;
	led->hlv = wacom->led.hlv;
	led->cdev.name = name;
	led->cdev.max_brightness = LED_FULL;
	led->cdev.flags = LED_HW_PLUGGABLE;
	led->cdev.brightness_get = __wacom_led_brightness_get;
	if (!read_only) {
		led->cdev.brightness_set_blocking = wacom_led_brightness_set;
		led->cdev.default_trigger = led->cdev.name;
	} else {
		led->cdev.brightness_set = wacom_led_readonly_brightness_set;
	}

	error = FUNC2(dev, &led->cdev);
	if (error) {
		FUNC4(wacom->hdev,
			"failed to register LED %s: %d\n",
			led->cdev.name, error);
		led->cdev.name = NULL;
		return error;
	}

	return 0;
}