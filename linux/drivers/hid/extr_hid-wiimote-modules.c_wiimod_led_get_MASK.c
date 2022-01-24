#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; struct led_classdev** leds; } ;
struct led_classdev {TYPE_2__* dev; } ;
struct device {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_4__ {struct device* parent; } ;

/* Variables and functions */
 int LED_FULL ; 
 int LED_OFF ; 
 int FUNC0 (int) ; 
 struct wiimote_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static enum led_brightness FUNC4(struct led_classdev *led_dev)
{
	struct device *dev = led_dev->dev->parent;
	struct wiimote_data *wdata = FUNC1(dev);
	int i;
	unsigned long flags;
	bool value = false;

	for (i = 0; i < 4; ++i) {
		if (wdata->leds[i] == led_dev) {
			FUNC2(&wdata->state.lock, flags);
			value = wdata->state.flags & FUNC0(i + 1);
			FUNC3(&wdata->state.lock, flags);
			break;
		}
	}

	return value ? LED_FULL : LED_OFF;
}