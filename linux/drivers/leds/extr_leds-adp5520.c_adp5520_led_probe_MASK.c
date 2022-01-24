#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct led_info {int flags; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct adp5520_leds_platform_data {int num_leds; struct led_info* leds; } ;
struct TYPE_6__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct adp5520_led {int flags; int id; TYPE_1__ cdev; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int ADP5520_01_MAXLEDS ; 
 int ADP5520_FLAG_LED_MASK ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  adp5520_led_set ; 
 int FUNC1 (struct adp5520_led*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 struct adp5520_leds_platform_data* FUNC3 (TYPE_3__*) ; 
 struct adp5520_led* FUNC4 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct adp5520_led*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct adp5520_leds_platform_data *pdata = FUNC3(&pdev->dev);
	struct adp5520_led *led, *led_dat;
	struct led_info *cur_led;
	int ret, i;

	if (pdata == NULL) {
		FUNC2(&pdev->dev, "missing platform data\n");
		return -ENODEV;
	}

	if (pdata->num_leds > ADP5520_01_MAXLEDS) {
		FUNC2(&pdev->dev, "can't handle more than %d LEDS\n",
				 ADP5520_01_MAXLEDS);
		return -EFAULT;
	}

	led = FUNC4(&pdev->dev, pdata->num_leds, sizeof(*led),
				GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	ret = FUNC0(pdev);
	if (ret) {
		FUNC2(&pdev->dev, "failed to write\n");
		return ret;
	}

	for (i = 0; i < pdata->num_leds; ++i) {
		cur_led = &pdata->leds[i];
		led_dat = &led[i];

		led_dat->cdev.name = cur_led->name;
		led_dat->cdev.default_trigger = cur_led->default_trigger;
		led_dat->cdev.brightness_set_blocking = adp5520_led_set;
		led_dat->cdev.brightness = LED_OFF;

		if (cur_led->flags & ADP5520_FLAG_LED_MASK)
			led_dat->flags = cur_led->flags;
		else
			led_dat->flags = i + 1;

		led_dat->id = led_dat->flags & ADP5520_FLAG_LED_MASK;

		led_dat->master = pdev->dev.parent;

		ret = FUNC5(led_dat->master, &led_dat->cdev);
		if (ret) {
			FUNC2(&pdev->dev, "failed to register LED %d\n",
				led_dat->id);
			goto err;
		}

		ret = FUNC1(led_dat);
		if (ret) {
			FUNC2(&pdev->dev, "failed to write\n");
			i++;
			goto err;
		}
	}

	FUNC7(pdev, led);
	return 0;

err:
	if (i > 0) {
		for (i = i - 1; i >= 0; i--)
			FUNC6(&led[i].cdev);
	}

	return ret;
}