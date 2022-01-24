#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_11__ {int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  name; } ;
struct cpcap_led {TYPE_2__* dev; TYPE_5__ led; TYPE_1__* info; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/  vdd; } ;
struct TYPE_9__ {int reg; int /*<<< orphan*/  limit; int /*<<< orphan*/  init_val; scalar_t__ init_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpcap_led_of_match ; 
 int /*<<< orphan*/  cpcap_led_set ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 struct cpcap_led* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct cpcap_led*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct cpcap_led *led;
	int err;

	match = FUNC9(FUNC10(cpcap_led_of_match), &pdev->dev);
	if (!match || !match->data)
		return -EINVAL;

	led = FUNC5(&pdev->dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;
	FUNC11(pdev, led);
	led->info = match->data;
	led->dev = &pdev->dev;

	if (led->info->reg == 0x0000) {
		FUNC2(led->dev, "Unsupported LED");
		return -ENODEV;
	}

	led->regmap = FUNC3(pdev->dev.parent, NULL);
	if (!led->regmap)
		return -ENODEV;

	led->vdd = FUNC7(&pdev->dev, "vdd");
	if (FUNC0(led->vdd)) {
		err = FUNC1(led->vdd);
		FUNC2(led->dev, "Couldn't get regulator: %d", err);
		return err;
	}

	err = FUNC4(&pdev->dev, "label", &led->led.name);
	if (err) {
		FUNC2(led->dev, "Couldn't read LED label: %d", err);
		return err;
	}

	if (led->info->init_mask) {
		err = FUNC12(led->regmap, led->info->reg,
			led->info->init_mask, led->info->init_val);
		if (err) {
			FUNC2(led->dev, "regmap failed: %d", err);
			return err;
		}
	}

	FUNC8(&led->update_lock);

	led->led.max_brightness = led->info->limit;
	led->led.brightness_set_blocking = cpcap_led_set;
	err = FUNC6(&pdev->dev, &led->led);
	if (err) {
		FUNC2(led->dev, "Couldn't register LED: %d", err);
		return err;
	}

	return 0;
}