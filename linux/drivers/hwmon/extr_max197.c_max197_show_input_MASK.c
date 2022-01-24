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
struct sensor_device_attribute {int index; } ;
struct max197_data {int /*<<< orphan*/  lock; scalar_t__ scale; int /*<<< orphan*/ * ctrl_bytes; TYPE_1__* pdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s32 ;
struct TYPE_2__ {int (* convert ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int MAX197_SCALE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct max197_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct max197_data*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				 struct device_attribute *devattr,
				 char *buf)
{
	struct max197_data *data = FUNC1(dev);
	struct sensor_device_attribute *attr = FUNC7(devattr);
	int channel = attr->index;
	s32 value;
	int ret;

	if (FUNC3(&data->lock))
		return -ERESTARTSYS;

	ret = data->pdata->convert(data->ctrl_bytes[channel]);
	if (ret < 0) {
		FUNC0(dev, "conversion failed\n");
		goto unlock;
	}
	value = ret;

	/*
	 * Coefficient to apply on raw value.
	 * See Table 1. Full Scale and Zero Scale in the MAX197 datasheet.
	 */
	if (data->scale) {
		value *= MAX197_SCALE;
		if (FUNC2(data, channel))
			value *= 2;
		value /= 10000;
	}

	ret = FUNC5(buf, "%d\n", value);

unlock:
	FUNC4(&data->lock);
	return ret;
}