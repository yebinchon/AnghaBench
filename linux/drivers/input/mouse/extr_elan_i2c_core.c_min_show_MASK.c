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
struct i2c_client {int dummy; } ;
struct elan_tp_data {int min_baseline; int /*<<< orphan*/  sysfs_mutex; int /*<<< orphan*/  baseline_ready; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct elan_tp_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC4(dev);
	struct elan_tp_data *data = FUNC0(client);
	int retval;

	retval = FUNC1(&data->sysfs_mutex);
	if (retval)
		return retval;

	if (!data->baseline_ready) {
		retval = -ENODATA;
		goto out;
	}

	retval = FUNC3(buf, PAGE_SIZE, "%d", data->min_baseline);

out:
	FUNC2(&data->sysfs_mutex);
	return retval;
}