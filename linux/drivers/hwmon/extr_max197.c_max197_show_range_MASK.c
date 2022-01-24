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
struct sensor_device_attribute_2 {int index; int nr; } ;
struct max197_data {int limit; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERESTARTSYS ; 
 struct max197_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct max197_data*,int) ; 
 scalar_t__ FUNC2 (struct max197_data*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *devattr, char *buf)
{
	struct max197_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *attr = FUNC6(devattr);
	int channel = attr->index;
	bool is_min = attr->nr;
	int range;

	if (FUNC3(&data->lock))
		return -ERESTARTSYS;

	range = FUNC2(data, channel) ?
		data->limit : data->limit / 2;
	if (is_min) {
		if (FUNC1(data, channel))
			range = -range;
		else
			range = 0;
	}

	FUNC4(&data->lock);

	return FUNC5(buf, "%d\n", range);
}