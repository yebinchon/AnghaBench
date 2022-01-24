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
typedef  int u8 ;
typedef  int u32 ;
struct lm3601x_led {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct led_classdev_flash {int dummy; } ;

/* Variables and functions */
 int LED_OFF ; 
 int /*<<< orphan*/  LM3601X_ENABLE_REG ; 
 int /*<<< orphan*/  LM3601X_LED_FLASH_REG ; 
 int /*<<< orphan*/  LM3601X_MODE_STROBE ; 
 int LM3601X_STROBE_REG_DIV ; 
 struct lm3601x_led* FUNC0 (struct led_classdev_flash*) ; 
 int FUNC1 (struct lm3601x_led*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct led_classdev_flash *fled_cdev,
					u32 brightness)
{
	struct lm3601x_led *led = FUNC0(fled_cdev);
	u8 brightness_val;
	int ret;

	FUNC2(&led->lock);
	ret = FUNC1(led);
	if (ret < 0)
		goto out;

	if (brightness == LED_OFF) {
		ret = FUNC4(led->regmap, LM3601X_ENABLE_REG,
					LM3601X_MODE_STROBE, LED_OFF);
		goto out;
	}

	brightness_val = brightness / LM3601X_STROBE_REG_DIV;

	ret = FUNC5(led->regmap, LM3601X_LED_FLASH_REG, brightness_val);
out:
	FUNC3(&led->lock);
	return ret;
}