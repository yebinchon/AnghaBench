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
typedef  int /*<<< orphan*/  u8 ;
struct lm3533_led {int /*<<< orphan*/  lm3533; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lm3533_led*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct lm3533_led* FUNC4 (struct led_classdev*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					char *buf, u8 base)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct lm3533_led *led = FUNC4(led_cdev);
	ssize_t ret;
	u8 reg;
	u8 val;

	reg = FUNC1(led, base);
	ret = FUNC2(led->lm3533, reg, &val);
	if (ret)
		return ret;

	return FUNC3(buf, PAGE_SIZE, "%x\n", val);
}