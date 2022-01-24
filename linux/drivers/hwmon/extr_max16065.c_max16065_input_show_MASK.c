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
struct sensor_device_attribute {size_t index; } ;
struct max16065_data {int* adc; int /*<<< orphan*/ * range; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct max16065_data* FUNC1 (struct device*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				   struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(da);
	struct max16065_data *data = FUNC1(dev);
	int adc = data->adc[attr->index];

	if (FUNC4(adc < 0))
		return adc;

	return FUNC2(buf, PAGE_SIZE, "%d\n",
			FUNC0(adc, data->range[attr->index]));
}