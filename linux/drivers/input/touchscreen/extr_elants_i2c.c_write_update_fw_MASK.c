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
struct elants_data {int /*<<< orphan*/  sysfs_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct elants_data*) ; 
 struct elants_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct elants_data *ts = FUNC2(client);
	int error;

	error = FUNC3(&ts->sysfs_mutex);
	if (error)
		return error;

	error = FUNC1(ts);
	FUNC0(dev, "firmware update result: %d\n", error);

	FUNC4(&ts->sysfs_mutex);
	return error ?: count;
}