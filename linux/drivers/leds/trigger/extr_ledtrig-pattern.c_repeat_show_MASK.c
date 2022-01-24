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
struct pattern_trig_data {int last_repeat; int /*<<< orphan*/  lock; } ;
struct led_classdev {struct pattern_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			   char *buf)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct pattern_trig_data *data = led_cdev->trigger_data;
	int repeat;

	FUNC1(&data->lock);

	repeat = data->last_repeat;

	FUNC2(&data->lock);

	return FUNC3(buf, PAGE_SIZE, "%d\n", repeat);
}