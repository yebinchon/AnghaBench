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
struct sensor_device_attribute_2 {size_t nr; size_t index; } ;
struct max16065_data {int** limit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct max16065_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute_2* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				   struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute_2 *attr2 = FUNC2(da);
	struct max16065_data *data = FUNC0(dev);

	return FUNC1(buf, PAGE_SIZE, "%d\n",
			data->limit[attr2->nr][attr2->index]);
}