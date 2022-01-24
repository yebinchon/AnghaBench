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
struct f71805f_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_low; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct f71805f_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct f71805f_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute
			   *devattr, const char *buf, size_t count)
{
	struct f71805f_data *data = FUNC1(dev);
	struct sensor_device_attribute *attr = FUNC7(devattr);
	int nr = attr->index;
	long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	data->in_low[nr] = FUNC3(val);
	FUNC2(data, FUNC0(nr), data->in_low[nr]);
	FUNC6(&data->update_lock);

	return count;
}