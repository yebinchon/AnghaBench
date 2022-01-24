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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7x10_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * ADT7X10_REG_TEMP ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adt7x10_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				  struct device_attribute *da,
				  const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(da);
	struct adt7x10_data *data = FUNC2(dev);
	int nr = attr->index;
	long temp;
	int ret;

	ret = FUNC3(buf, 10, &temp);
	if (ret)
		return ret;

	FUNC4(&data->update_lock);
	data->temp[nr] = FUNC0(temp);
	ret = FUNC1(dev, ADT7X10_REG_TEMP[nr], data->temp[nr]);
	if (ret)
		count = ret;
	FUNC5(&data->update_lock);
	return count;
}