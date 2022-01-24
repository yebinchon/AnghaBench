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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct wiimote_data {struct led_classdev** leds; TYPE_2__ state; TYPE_1__* hdev; } ;
struct wiimod_ops {size_t arg; } ;
struct led_classdev {char* name; int max_brightness; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  brightness_get; scalar_t__ brightness; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WIIPROTO_FLAG_LED1 ; 
 char* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*) ; 
 struct led_classdev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  wiimod_led_get ; 
 int /*<<< orphan*/  wiimod_led_set ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const struct wiimod_ops *ops,
			    struct wiimote_data *wdata)
{
	struct device *dev = &wdata->hdev->dev;
	size_t namesz = FUNC7(FUNC0(dev)) + 9;
	struct led_classdev *led;
	unsigned long flags;
	char *name;
	int ret;

	led = FUNC2(sizeof(struct led_classdev) + namesz, GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	name = (void*)&led[1];
	FUNC4(name, namesz, "%s:blue:p%lu", FUNC0(dev), ops->arg);
	led->name = name;
	led->brightness = 0;
	led->max_brightness = 1;
	led->brightness_get = wiimod_led_get;
	led->brightness_set = wiimod_led_set;

	wdata->leds[ops->arg] = led;
	ret = FUNC3(dev, led);
	if (ret)
		goto err_free;

	/* enable LED1 to stop initial LED-blinking */
	if (ops->arg == 0) {
		FUNC5(&wdata->state.lock, flags);
		FUNC8(wdata, WIIPROTO_FLAG_LED1);
		FUNC6(&wdata->state.lock, flags);
	}

	return 0;

err_free:
	wdata->leds[ops->arg] = NULL;
	FUNC1(led);
	return ret;
}