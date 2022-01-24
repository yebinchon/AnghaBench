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
struct via686a_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_over; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/ * VIA686A_REG_TEMP_OVER ; 
 struct via686a_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC6 (struct via686a_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *da, const char *buf,
			       size_t count) {
	struct via686a_data *data = FUNC1(dev);
	struct sensor_device_attribute *attr = FUNC5(da);
	int nr = attr->index;
	long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	data->temp_over[nr] = FUNC0(val);
	FUNC6(data, VIA686A_REG_TEMP_OVER[nr],
			    data->temp_over[nr]);
	FUNC4(&data->update_lock);
	return count;
}