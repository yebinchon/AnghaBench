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
struct max77693_sub_led {int fled_id; } ;
struct max77693_led_device {int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TORCH_IOUT_STEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct max77693_sub_led* FUNC2 (struct led_classdev_flash*) ; 
 struct led_classdev_flash* FUNC3 (struct led_classdev*) ; 
 int FUNC4 (struct max77693_led_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct max77693_led_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct max77693_led_device*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct max77693_led_device* FUNC9 (struct max77693_sub_led*) ; 

__attribute__((used)) static int FUNC10(struct led_classdev *led_cdev,
					enum led_brightness value)
{
	struct led_classdev_flash *fled_cdev = FUNC3(led_cdev);
	struct max77693_sub_led *sub_led = FUNC2(fled_cdev);
	struct max77693_led_device *led = FUNC9(sub_led);
	int fled_id = sub_led->fled_id, ret;

	FUNC7(&led->lock);

	if (value == 0) {
		ret = FUNC5(led, FUNC0(fled_id));
		if (ret < 0)
			FUNC1(&led->pdev->dev,
				"Failed to clear torch mode (%d)\n",
				ret);
		goto unlock;
	}

	ret = FUNC6(led, fled_id, value * TORCH_IOUT_STEP);
	if (ret < 0) {
		FUNC1(&led->pdev->dev,
			"Failed to set torch current (%d)\n",
			ret);
		goto unlock;
	}

	ret = FUNC4(led, FUNC0(fled_id));
	if (ret < 0)
		FUNC1(&led->pdev->dev,
			"Failed to set torch mode (%d)\n",
			ret);
unlock:
	FUNC8(&led->lock);

	return ret;
}