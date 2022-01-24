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
struct lm3533_led {int /*<<< orphan*/  cb; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct lm3533_led* FUNC3 (struct led_classdev*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct lm3533_led *led = FUNC3(led_cdev);
	u8 val;
	int ret;

	ret = FUNC1(&led->cb, &val);
	if (ret)
		return ret;

	return FUNC2(buf, PAGE_SIZE, "%u\n", val);
}