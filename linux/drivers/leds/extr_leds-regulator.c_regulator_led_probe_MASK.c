#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ max_brightness; scalar_t__ name; scalar_t__ brightness; int /*<<< orphan*/  flags; int /*<<< orphan*/  (* brightness_set_blocking ) (TYPE_1__*,scalar_t__) ;} ;
struct regulator_led {int enabled; TYPE_1__ cdev; int /*<<< orphan*/  mutex; struct regulator* vcc; } ;
struct regulator {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct led_regulator_platform_data {scalar_t__ name; scalar_t__ brightness; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct led_regulator_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 struct regulator_led* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct regulator* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct regulator_led*) ; 
 scalar_t__ FUNC10 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct led_regulator_platform_data *pdata =
			FUNC3(&pdev->dev);
	struct regulator_led *led;
	struct regulator *vcc;
	int ret = 0;

	if (pdata == NULL) {
		FUNC2(&pdev->dev, "no platform data\n");
		return -ENODEV;
	}

	vcc = FUNC5(&pdev->dev, "vled");
	if (FUNC0(vcc)) {
		FUNC2(&pdev->dev, "Cannot get vcc for %s\n", pdata->name);
		return FUNC1(vcc);
	}

	led = FUNC4(&pdev->dev, sizeof(*led), GFP_KERNEL);
	if (led == NULL)
		return -ENOMEM;

	led->cdev.max_brightness = FUNC7(vcc);
	if (pdata->brightness > led->cdev.max_brightness) {
		FUNC2(&pdev->dev, "Invalid default brightness %d\n",
				pdata->brightness);
		return -EINVAL;
	}

	led->cdev.brightness_set_blocking = regulator_led_brightness_set;
	led->cdev.name = pdata->name;
	led->cdev.flags |= LED_CORE_SUSPENDRESUME;
	led->vcc = vcc;

	/* to handle correctly an already enabled regulator */
	if (FUNC10(led->vcc))
		led->enabled = 1;

	FUNC8(&led->mutex);

	FUNC9(pdev, led);

	ret = FUNC6(&pdev->dev, &led->cdev);
	if (ret < 0)
		return ret;

	/* to expose the default value to userspace */
	led->cdev.brightness = pdata->brightness;

	/* Set the default led status */
	FUNC11(&led->cdev, led->cdev.brightness);

	return 0;
}