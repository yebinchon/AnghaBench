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
struct sensor_device_attribute_2 {size_t nr; int index; } ;
struct max16065_data {int* fault; int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct max16065_data* FUNC2 (struct device*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute_2* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				   struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute_2 *attr2 = FUNC4(da);
	struct max16065_data *data = FUNC2(dev);
	int val = data->fault[attr2->nr];

	if (val < 0)
		return val;

	val &= (1 << attr2->index);
	if (val)
		FUNC1(data->client,
					  FUNC0(attr2->nr), val);

	return FUNC3(buf, PAGE_SIZE, "%d\n", !!val);
}