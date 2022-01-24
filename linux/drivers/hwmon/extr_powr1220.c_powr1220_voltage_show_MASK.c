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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *dev_attr,
				     char *buf)
{
	struct sensor_device_attribute *attr = FUNC2(dev_attr);
	int adc_val = FUNC0(dev, attr->index);

	if (adc_val < 0)
		return adc_val;

	return FUNC1(buf, "%d\n", adc_val);
}