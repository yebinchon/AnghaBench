#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_flash_config {int dummy; } ;
struct led_classdev_flash {int dummy; } ;
struct max77693_sub_led {int /*<<< orphan*/  v4l2_flash; struct led_classdev_flash fled_cdev; } ;
struct max77693_led_device {TYPE_1__* pdev; } ;
struct max77693_led_config_data {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC4 (struct max77693_sub_led*,struct max77693_led_config_data*,struct v4l2_flash_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct max77693_led_device* FUNC6 (struct max77693_sub_led*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,struct led_classdev_flash*,int /*<<< orphan*/ *,struct v4l2_flash_config*) ; 
 int /*<<< orphan*/  v4l2_flash_ops ; 

__attribute__((used)) static int FUNC8(struct max77693_sub_led *sub_led,
				 struct max77693_led_config_data *led_cfg,
				 struct device_node *sub_node)
{
	struct max77693_led_device *led = FUNC6(sub_led);
	struct led_classdev_flash *fled_cdev = &sub_led->fled_cdev;
	struct device *dev = &led->pdev->dev;
	struct v4l2_flash_config v4l2_sd_cfg = {};
	int ret;

	/* Register in the LED subsystem */
	ret = FUNC2(dev, fled_cdev);
	if (ret < 0)
		return ret;

	FUNC4(sub_led, led_cfg, &v4l2_sd_cfg);

	/* Register in the V4L2 subsystem. */
	sub_led->v4l2_flash = FUNC7(dev, FUNC5(sub_node),
					      fled_cdev, &v4l2_flash_ops,
					      &v4l2_sd_cfg);
	if (FUNC0(sub_led->v4l2_flash)) {
		ret = FUNC1(sub_led->v4l2_flash);
		goto err_v4l2_flash_init;
	}

	return 0;

err_v4l2_flash_init:
	FUNC3(fled_cdev);
	return ret;
}