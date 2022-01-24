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
struct emc2103_data {int fan_target; unsigned long fan_multiplier; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long FAN_RPM_FACTOR ; 
 void* FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct emc2103_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *da, const char *buf,
				 size_t count)
{
	struct emc2103_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	unsigned long rpm_target;

	int result = FUNC2(buf, 10, &rpm_target);
	if (result < 0)
		return result;

	/* Datasheet states 16384 as maximum RPM target (table 3.2) */
	rpm_target = FUNC0(rpm_target, 0, 16384);

	FUNC3(&data->update_lock);

	if (rpm_target == 0)
		data->fan_target = 0x1fff;
	else
		data->fan_target = FUNC0(
			(FAN_RPM_FACTOR * data->fan_multiplier) / rpm_target,
			0, 0x1fff);

	FUNC5(client, data->fan_target);

	FUNC4(&data->update_lock);
	return count;
}