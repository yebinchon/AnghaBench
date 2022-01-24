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
struct pattern_trig_data {int dummy; } ;
struct led_classdev {struct pattern_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pattern_trig_data*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	struct pattern_trig_data *data = led_cdev->trigger_data;

	return FUNC1(data, buf, false);
}