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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct max77693_sub_led {int /*<<< orphan*/  fled_cdev; int /*<<< orphan*/  v4l2_flash; } ;
struct max77693_led_device {int /*<<< orphan*/  lock; scalar_t__ iout_joint; struct max77693_sub_led* sub_leds; int /*<<< orphan*/  allowed_modes; int /*<<< orphan*/  regmap; struct platform_device* pdev; } ;
struct max77693_led_config_data {int dummy; } ;
struct max77693_dev {int /*<<< orphan*/  regmap; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t FLED1 ; 
 size_t FLED2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MODE_FLASH_MASK ; 
 struct max77693_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct max77693_led_device* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct max77693_led_device*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct max77693_sub_led*,struct max77693_led_config_data*) ; 
 int FUNC5 (struct max77693_led_device*,struct max77693_led_config_data*,struct device_node**) ; 
 int FUNC6 (struct max77693_sub_led*,struct max77693_led_config_data*,struct device_node*) ; 
 int FUNC7 (struct max77693_led_device*,struct max77693_led_config_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct max77693_led_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct max77693_dev *iodev = FUNC0(dev->parent);
	struct max77693_led_device *led;
	struct max77693_sub_led *sub_leds;
	struct device_node *sub_nodes[2] = {};
	struct max77693_led_config_data led_cfg = {};
	int init_fled_cdev[2], i, ret;

	led = FUNC1(dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	led->pdev = pdev;
	led->regmap = iodev->regmap;
	led->allowed_modes = MODE_FLASH_MASK;
	sub_leds = led->sub_leds;

	FUNC10(pdev, led);
	ret = FUNC5(led, &led_cfg, sub_nodes);
	if (ret < 0)
		return ret;

	ret = FUNC7(led, &led_cfg);
	if (ret < 0)
		return ret;

	FUNC9(&led->lock);

	init_fled_cdev[FLED1] =
			led->iout_joint || FUNC3(led, FLED1);
	init_fled_cdev[FLED2] =
			!led->iout_joint && FUNC3(led, FLED2);

	for (i = FLED1; i <= FLED2; ++i) {
		if (!init_fled_cdev[i])
			continue;

		/* Initialize LED Flash class device */
		FUNC4(&sub_leds[i], &led_cfg);

		/*
		 * Register LED Flash class device and corresponding
		 * V4L2 Flash device.
		 */
		ret = FUNC6(&sub_leds[i], &led_cfg,
						sub_nodes[i]);
		if (ret < 0) {
			/*
			 * At this moment FLED1 might have been already
			 * registered and it needs to be released.
			 */
			if (i == FLED2)
				goto err_register_led2;
			else
				goto err_register_led1;
		}
	}

	return 0;

err_register_led2:
	/* It is possible than only FLED2 was to be registered */
	if (!init_fled_cdev[FLED1])
		goto err_register_led1;
	FUNC11(sub_leds[FLED1].v4l2_flash);
	FUNC2(&sub_leds[FLED1].fled_cdev);
err_register_led1:
	FUNC8(&led->lock);

	return ret;
}