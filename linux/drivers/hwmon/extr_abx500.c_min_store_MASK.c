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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abx500_temp {unsigned long* min; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MAX_TEMP ; 
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct abx500_temp* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct abx500_temp*) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *devattr,
			 const char *buf, size_t count)
{
	unsigned long val;
	struct abx500_temp *data = FUNC1(dev);
	struct sensor_device_attribute *attr = FUNC6(devattr);
	int res = FUNC2(buf, 10, &val);
	if (res < 0)
		return res;

	val = FUNC0(val, 0, DEFAULT_MAX_TEMP);

	FUNC3(&data->lock);
	data->min[attr->index] = val;
	FUNC5(data);
	FUNC4(&data->lock);

	return count;
}