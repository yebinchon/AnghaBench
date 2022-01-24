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
struct oneshot_trig_data {int /*<<< orphan*/  invert; } ;
struct led_classdev {int /*<<< orphan*/  blink_delay_off; int /*<<< orphan*/  blink_delay_on; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct led_classdev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct oneshot_trig_data* FUNC1 (struct device*) ; 
 struct led_classdev* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC2(dev);
	struct oneshot_trig_data *oneshot_data = FUNC1(dev);

	FUNC0(led_cdev,
			&led_cdev->blink_delay_on, &led_cdev->blink_delay_off,
			oneshot_data->invert);

	/* content is ignored */
	return size;
}