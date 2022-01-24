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
struct oneshot_trig_data {int invert; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 struct oneshot_trig_data* FUNC2 (struct device*) ; 
 struct led_classdev* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC3(dev);
	struct oneshot_trig_data *oneshot_data = FUNC2(dev);
	unsigned long state;
	int ret;

	ret = FUNC0(buf, 0, &state);
	if (ret)
		return ret;

	oneshot_data->invert = !!state;

	if (oneshot_data->invert)
		FUNC1(led_cdev, LED_FULL);
	else
		FUNC1(led_cdev, LED_OFF);

	return size;
}