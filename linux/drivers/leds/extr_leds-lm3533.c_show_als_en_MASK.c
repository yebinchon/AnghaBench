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
struct lm3533_led {int /*<<< orphan*/  lm3533; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int LM3533_REG_CTRLBANK_BCONF_ALS_EN_MASK ; 
 int /*<<< orphan*/  LM3533_REG_CTRLBANK_BCONF_BASE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 int FUNC1 (struct lm3533_led*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct lm3533_led* FUNC4 (struct led_classdev*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct lm3533_led *led = FUNC4(led_cdev);
	bool enable;
	u8 reg;
	u8 val;
	int ret;

	reg = FUNC1(led, LM3533_REG_CTRLBANK_BCONF_BASE);
	ret = FUNC2(led->lm3533, reg, &val);
	if (ret)
		return ret;

	enable = val & LM3533_REG_CTRLBANK_BCONF_ALS_EN_MASK;

	return FUNC3(buf, PAGE_SIZE, "%d\n", enable);
}