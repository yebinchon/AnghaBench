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
struct sensor_device_attribute {int index; } ;
struct it87_data {int extra; int fan_ctl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct it87_data*) ; 
 scalar_t__ FUNC1 (struct it87_data*) ; 
 struct it87_data* FUNC2 (struct device*) ; 
 int* pwm_freq ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	struct sensor_device_attribute *sensor_attr = FUNC4(attr);
	struct it87_data *data = FUNC2(dev);
	int nr = sensor_attr->index;
	unsigned int freq;
	int index;

	if (FUNC1(data) && nr == 1)
		index = (data->extra >> 4) & 0x07;
	else
		index = (data->fan_ctl >> 4) & 0x07;

	freq = pwm_freq[index] / (FUNC0(data) ? 256 : 128);

	return FUNC3(buf, "%u\n", freq);
}