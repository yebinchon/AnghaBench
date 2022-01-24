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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct lp8788_led_platform_data {scalar_t__ name; } ;
struct TYPE_4__ {scalar_t__ name; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  max_brightness; } ;
struct lp8788_led {TYPE_2__ led_dev; int /*<<< orphan*/  lock; struct lp8788* lp; } ;
struct lp8788 {TYPE_1__* pdata; } ;
struct TYPE_3__ {struct lp8788_led_platform_data* led_pdata; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_LED_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct lp8788* FUNC1 (int /*<<< orphan*/ ) ; 
 struct lp8788_led* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  lp8788_brightness_set ; 
 int FUNC4 (struct lp8788_led*,struct lp8788_led_platform_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct lp8788 *lp = FUNC1(pdev->dev.parent);
	struct lp8788_led_platform_data *led_pdata;
	struct lp8788_led *led;
	struct device *dev = &pdev->dev;
	int ret;

	led = FUNC2(dev, sizeof(struct lp8788_led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	led->lp = lp;
	led->led_dev.max_brightness = MAX_BRIGHTNESS;
	led->led_dev.brightness_set_blocking = lp8788_brightness_set;

	led_pdata = lp->pdata ? lp->pdata->led_pdata : NULL;

	if (!led_pdata || !led_pdata->name)
		led->led_dev.name = DEFAULT_LED_NAME;
	else
		led->led_dev.name = led_pdata->name;

	FUNC5(&led->lock);

	ret = FUNC4(led, led_pdata);
	if (ret) {
		FUNC0(dev, "led init device err: %d\n", ret);
		return ret;
	}

	ret = FUNC3(dev, &led->led_dev);
	if (ret) {
		FUNC0(dev, "led register err: %d\n", ret);
		return ret;
	}

	return 0;
}