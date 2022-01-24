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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct it87_data {int** auto_temp; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (long) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 struct it87_data* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct it87_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct it87_data *data = FUNC3(dev);
	struct sensor_device_attribute_2 *sensor_attr =
			FUNC9(attr);
	int nr = sensor_attr->nr;
	int point = sensor_attr->index;
	long val;
	int reg;

	if (FUNC6(buf, 10, &val) < 0 || val < -128000 || val > 127000)
		return -EINVAL;

	FUNC7(&data->update_lock);
	if (FUNC4(data) && !point) {
		reg = data->auto_temp[nr][1] - FUNC1(val);
		reg = FUNC2(reg, 0, 0x1f) | (data->auto_temp[nr][0] & 0xe0);
		data->auto_temp[nr][0] = reg;
		FUNC5(data, FUNC0(nr, 5), reg);
	} else {
		reg = FUNC1(val);
		data->auto_temp[nr][point] = reg;
		if (FUNC4(data))
			point--;
		FUNC5(data, FUNC0(nr, point), reg);
	}
	FUNC8(&data->update_lock);
	return count;
}