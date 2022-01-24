#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct max1111_data {int lsb; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct max1111_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,int) ; 
 int FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct max1111_data *data = FUNC0(dev);
	int channel = FUNC3(attr)->index;
	int ret;

	ret = FUNC1(dev, channel);
	if (ret < 0)
		return ret;

	/*
	 * Assume the reference voltage to be 2.048V or 4.096V, with an 8-bit
	 * sample. The LSB weight is 8mV or 16mV depending on the chip type.
	 */
	return FUNC2(buf, "%d\n", ret * data->lsb);
}