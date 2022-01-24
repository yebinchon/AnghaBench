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
typedef  int u32 ;
struct sensor_device_attribute {int index; } ;
struct ina209_data {int valid; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct ina209_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ina209_reset_history_regs ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				    struct device_attribute *da,
				    const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(da);
	struct ina209_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	u32 mask = attr->index;
	long val;
	int i, ret;

	ret = FUNC3(buf, 10, &val);
	if (ret < 0)
		return ret;

	FUNC4(&data->update_lock);
	for (i = 0; i < FUNC0(ina209_reset_history_regs); i++) {
		if (mask & (1 << i))
			FUNC2(client,
					ina209_reset_history_regs[i], 1);
	}
	data->valid = false;
	FUNC5(&data->update_lock);
	return count;
}