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
struct w83781d_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_min; int /*<<< orphan*/ * fan_div; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct w83781d_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (struct w83781d_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *da,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC7(da);
	struct w83781d_data *data = FUNC3(dev);
	int nr = attr->index;
	unsigned long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	data->fan_min[nr] =
	    FUNC1(val, FUNC0(data->fan_div[nr]));
	FUNC8(data, FUNC2(nr),
			    data->fan_min[nr]);

	FUNC6(&data->update_lock);
	return count;
}