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
struct lm8323_pwm {int fade_time; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct lm8323_pwm* FUNC0 (struct led_classdev*) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,int*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct led_classdev *led_cdev = FUNC1(dev);
	struct lm8323_pwm *pwm = FUNC0(led_cdev);
	int ret, time;

	ret = FUNC2(buf, 10, &time);
	/* Numbers only, please. */
	if (ret)
		return ret;

	pwm->fade_time = time;

	return FUNC3(buf);
}