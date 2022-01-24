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
typedef  scalar_t__ u8 ;
struct lm3533_led {int /*<<< orphan*/  lm3533; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LM3533_REG_CTRLBANK_BCONF_ALS_EN_MASK ; 
 int /*<<< orphan*/  LM3533_REG_CTRLBANK_BCONF_BASE ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC2 (struct lm3533_led*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 struct lm3533_led* FUNC4 (struct led_classdev*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t len)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct lm3533_led *led = FUNC4(led_cdev);
	unsigned enable;
	u8 reg;
	u8 mask;
	u8 val;
	int ret;

	if (FUNC1(buf, 0, &enable))
		return -EINVAL;

	reg = FUNC2(led, LM3533_REG_CTRLBANK_BCONF_BASE);
	mask = LM3533_REG_CTRLBANK_BCONF_ALS_EN_MASK;

	if (enable)
		val = mask;
	else
		val = 0;

	ret = FUNC3(led->lm3533, reg, val, mask);
	if (ret)
		return ret;

	return len;
}