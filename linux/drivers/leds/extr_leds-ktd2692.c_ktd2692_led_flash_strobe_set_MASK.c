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
typedef  int u32 ;
struct led_flash_setting {int /*<<< orphan*/  step; int /*<<< orphan*/  val; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;
struct led_classdev_flash {TYPE_1__ led_cdev; struct led_flash_setting timeout; } ;
struct ktd2692_context {int mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  aux_gpio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTD2692_HIGH ; 
 int /*<<< orphan*/  KTD2692_LOW ; 
 void* KTD2692_MODE_DISABLE ; 
 int KTD2692_MODE_FLASH ; 
 int KTD2692_REG_FLASH_TIMEOUT_BASE ; 
 int KTD2692_REG_MODE_BASE ; 
 int /*<<< orphan*/  LED_OFF ; 
 struct ktd2692_context* FUNC1 (struct led_classdev_flash*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ktd2692_context*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct led_classdev_flash *fled_cdev,
					bool state)
{
	struct ktd2692_context *led = FUNC1(fled_cdev);
	struct led_flash_setting *timeout = &fled_cdev->timeout;
	u32 flash_tm_reg;

	FUNC4(&led->lock);

	if (state) {
		flash_tm_reg = FUNC0(timeout->val, timeout->step);
		FUNC3(led, flash_tm_reg
				| KTD2692_REG_FLASH_TIMEOUT_BASE);

		led->mode = KTD2692_MODE_FLASH;
		FUNC2(led->aux_gpio, KTD2692_HIGH);
	} else {
		led->mode = KTD2692_MODE_DISABLE;
		FUNC2(led->aux_gpio, KTD2692_LOW);
	}

	FUNC3(led, led->mode | KTD2692_REG_MODE_BASE);

	fled_cdev->led_cdev.brightness = LED_OFF;
	led->mode = KTD2692_MODE_DISABLE;

	FUNC5(&led->lock);

	return 0;
}