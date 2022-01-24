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
struct lm3601x_led {int flash_timeout; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 int LED_OFF ; 
 int /*<<< orphan*/  LM3601X_CFG_REG ; 
 int /*<<< orphan*/  LM3601X_ENABLE_REG ; 
 int LM3601X_LOWER_STEP_US ; 
 int LM3601X_MODE_IR_DRV ; 
 int LM3601X_MODE_STROBE ; 
 int LM3601X_MODE_TORCH ; 
 int LM3601X_TIMEOUT_MASK ; 
 int LM3601X_TIMEOUT_XOVER_US ; 
 int LM3601X_UPPER_STEP_US ; 
 struct lm3601x_led* FUNC0 (struct led_classdev_flash*) ; 
 int FUNC1 (struct lm3601x_led*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct led_classdev_flash *fled_cdev,
				bool state)
{
	struct lm3601x_led *led = FUNC0(fled_cdev);
	int timeout_reg_val;
	int current_timeout;
	int ret;

	FUNC2(&led->lock);

	ret = FUNC4(led->regmap, LM3601X_CFG_REG, &current_timeout);
	if (ret < 0)
		goto out;

	if (led->flash_timeout >= LM3601X_TIMEOUT_XOVER_US)
		timeout_reg_val = led->flash_timeout / LM3601X_UPPER_STEP_US + 0x07;
	else
		timeout_reg_val = led->flash_timeout / LM3601X_LOWER_STEP_US - 0x01;

	if (led->flash_timeout != current_timeout)
		ret = FUNC5(led->regmap, LM3601X_CFG_REG,
					LM3601X_TIMEOUT_MASK, timeout_reg_val);

	if (state)
		ret = FUNC5(led->regmap, LM3601X_ENABLE_REG,
					LM3601X_MODE_TORCH | LM3601X_MODE_IR_DRV,
					LM3601X_MODE_STROBE);
	else
		ret = FUNC5(led->regmap, LM3601X_ENABLE_REG,
					LM3601X_MODE_STROBE, LED_OFF);

	ret = FUNC1(led);
out:
	FUNC3(&led->lock);
	return ret;
}