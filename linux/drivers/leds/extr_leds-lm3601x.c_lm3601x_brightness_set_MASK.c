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
struct lm3601x_led {scalar_t__ led_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int LED_OFF ; 
 int /*<<< orphan*/  LM3601X_ENABLE_REG ; 
 scalar_t__ LM3601X_LED_TORCH ; 
 int /*<<< orphan*/  LM3601X_LED_TORCH_REG ; 
 int LM3601X_MODE_IR_DRV ; 
 int LM3601X_MODE_TORCH ; 
 struct lm3601x_led* FUNC0 (struct led_classdev_flash*) ; 
 struct led_classdev_flash* FUNC1 (struct led_classdev*) ; 
 int FUNC2 (struct lm3601x_led*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct led_classdev *cdev,
					enum led_brightness brightness)
{
	struct led_classdev_flash *fled_cdev = FUNC1(cdev);
	struct lm3601x_led *led = FUNC0(fled_cdev);
	int ret, led_mode_val;

	FUNC3(&led->lock);

	ret = FUNC2(led);
	if (ret < 0)
		goto out;

	if (led->led_mode == LM3601X_LED_TORCH)
		led_mode_val = LM3601X_MODE_TORCH;
	else
		led_mode_val = LM3601X_MODE_IR_DRV;

	if (brightness == LED_OFF) {
		ret = FUNC5(led->regmap, LM3601X_ENABLE_REG,
					led_mode_val, LED_OFF);
		goto out;
	}

	ret = FUNC6(led->regmap, LM3601X_LED_TORCH_REG, brightness);
	if (ret < 0)
		goto out;

	ret = FUNC5(led->regmap, LM3601X_ENABLE_REG,
				LM3601X_MODE_TORCH | LM3601X_MODE_IR_DRV,
				led_mode_val);
out:
	FUNC4(&led->lock);
	return ret;
}