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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct led_classdev {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  max_brightness; } ;
struct led_classdev_flash {int /*<<< orphan*/ * ops; struct led_classdev led_cdev; } ;
struct ktd2692_led_config_data {int /*<<< orphan*/  max_brightness; } ;
struct ktd2692_context {int /*<<< orphan*/  lock; struct led_classdev_flash fled_cdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LED_CORE_SUSPENDRESUME ; 
 int LED_DEV_CAP_FLASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ktd2692_context* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flash_ops ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev_flash*,struct ktd2692_led_config_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ktd2692_led_config_data*) ; 
 int /*<<< orphan*/  ktd2692_led_brightness_set ; 
 int FUNC4 (struct ktd2692_context*,int /*<<< orphan*/ *,struct ktd2692_led_config_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ktd2692_context*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct ktd2692_context*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct ktd2692_context *led;
	struct led_classdev *led_cdev;
	struct led_classdev_flash *fled_cdev;
	struct ktd2692_led_config_data led_cfg;
	int ret;

	led = FUNC1(&pdev->dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	fled_cdev = &led->fled_cdev;
	led_cdev = &fled_cdev->led_cdev;

	ret = FUNC4(led, &pdev->dev, &led_cfg);
	if (ret)
		return ret;

	FUNC2(fled_cdev, &led_cfg);
	FUNC3(&led_cfg);

	fled_cdev->ops = &flash_ops;

	led_cdev->max_brightness = led_cfg.max_brightness;
	led_cdev->brightness_set_blocking = ktd2692_led_brightness_set;
	led_cdev->flags |= LED_CORE_SUSPENDRESUME | LED_DEV_CAP_FLASH;

	FUNC8(&led->lock);

	FUNC9(pdev, led);

	ret = FUNC6(&pdev->dev, fled_cdev);
	if (ret) {
		FUNC0(&pdev->dev, "can't register LED %s\n", led_cdev->name);
		FUNC7(&led->lock);
		return ret;
	}

	FUNC5(led);

	return 0;
}