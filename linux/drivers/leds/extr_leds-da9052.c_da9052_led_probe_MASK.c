#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct led_platform_data {int num_leds; TYPE_1__* leds; } ;
struct da9052_pdata {struct led_platform_data* pled; } ;
struct TYPE_7__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  name; } ;
struct da9052_led {int led_index; TYPE_2__ cdev; void* da9052; } ;
struct da9052 {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_MAX_BRIGHTNESS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  da9052_led_set ; 
 int FUNC1 (struct da9052_led*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct da9052_pdata* FUNC4 (int /*<<< orphan*/ ) ; 
 struct da9052_led* FUNC5 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct da9052_led*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct da9052_pdata *pdata;
	struct da9052 *da9052;
	struct led_platform_data *pled;
	struct da9052_led *led = NULL;
	int error = -ENODEV;
	int i;

	da9052 = FUNC3(pdev->dev.parent);
	pdata = FUNC4(da9052->dev);
	if (pdata == NULL) {
		FUNC2(&pdev->dev, "No platform data\n");
		goto err;
	}

	pled = pdata->pled;
	if (pled == NULL) {
		FUNC2(&pdev->dev, "No platform data for LED\n");
		goto err;
	}

	led = FUNC5(&pdev->dev,
			   pled->num_leds, sizeof(struct da9052_led),
			   GFP_KERNEL);
	if (!led) {
		error = -ENOMEM;
		goto err;
	}

	for (i = 0; i < pled->num_leds; i++) {
		led[i].cdev.name = pled->leds[i].name;
		led[i].cdev.brightness_set_blocking = da9052_led_set;
		led[i].cdev.brightness = LED_OFF;
		led[i].cdev.max_brightness = DA9052_MAX_BRIGHTNESS;
		led[i].led_index = pled->leds[i].flags;
		led[i].da9052 = FUNC3(pdev->dev.parent);

		error = FUNC6(pdev->dev.parent, &led[i].cdev);
		if (error) {
			FUNC2(&pdev->dev, "Failed to register led %d\n",
				led[i].led_index);
			goto err_register;
		}

		error = FUNC1(&led[i],
						  led[i].cdev.brightness);
		if (error) {
			FUNC2(&pdev->dev, "Unable to init led %d\n",
				led[i].led_index);
			continue;
		}
	}
	error = FUNC0(led->da9052);
	if (error) {
		FUNC2(&pdev->dev, "Failed to configure GPIO LED%d\n", error);
		goto err_register;
	}

	FUNC8(pdev, led);

	return 0;

err_register:
	for (i = i - 1; i >= 0; i--)
		FUNC7(&led[i].cdev);
err:
	return error;
}