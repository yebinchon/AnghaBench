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
struct ds1621_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp; int /*<<< orphan*/  client; int /*<<< orphan*/  zbits; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * DS1621_REG_TEMP ; 
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ) ; 
 struct ds1621_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *da,
			  const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(da);
	struct ds1621_data *data = FUNC1(dev);
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->temp[attr->index] = FUNC0(val, data->zbits);
	FUNC2(data->client, DS1621_REG_TEMP[attr->index],
				     data->temp[attr->index]);
	FUNC5(&data->update_lock);
	return count;
}