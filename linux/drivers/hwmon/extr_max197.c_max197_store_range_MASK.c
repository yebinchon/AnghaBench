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
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ERESTARTSYS ; 
 struct max197_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct max197_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct max197_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct max197_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct max197_data*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				  struct device_attribute *devattr,
				  const char *buf, size_t count)
{
	struct max197_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *attr = FUNC8(devattr);
	int channel = attr->index;
	bool is_min = attr->nr;
	long value;
	int half = data->limit / 2;
	int full = data->limit;

	if (FUNC1(buf, 10, &value))
		return -EINVAL;

	if (is_min) {
		if (value <= -full)
			value = -full;
		else if (value < 0)
			value = -half;
		else
			value = 0;
	} else {
		if (value >= full)
			value = full;
		else
			value = half;
	}

	if (FUNC6(&data->lock))
		return -ERESTARTSYS;

	if (value == 0) {
		/* We can deduce only the polarity */
		FUNC5(data, channel);
	} else if (value == -half) {
		FUNC2(data, channel);
		FUNC4(data, channel);
	} else if (value == -full) {
		FUNC2(data, channel);
		FUNC3(data, channel);
	} else if (value == half) {
		/* We can deduce only the range */
		FUNC4(data, channel);
	} else if (value == full) {
		/* We can deduce only the range */
		FUNC3(data, channel);
	}

	FUNC7(&data->lock);

	return count;
}