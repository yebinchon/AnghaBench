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
typedef  int u8 ;
typedef  int u32 ;
struct max31790_data {int* fan_dynamics; int* target_count; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FAN_RPM_MAX ; 
 int FAN_RPM_MIN ; 
 int MAX31790_FAN_DYN_SR_MASK ; 
 int MAX31790_FAN_DYN_SR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (long,int) ; 
 int FUNC3 (long) ; 
 void* FUNC4 (int,int,int) ; 
 struct max31790_data* FUNC5 (struct device*) ; 
 int FUNC6 (int) ; 
#define  hwmon_fan_target 128 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct max31790_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	int target_count;
	int err = 0;
	u8 bits;
	int sr;

	FUNC9(&data->update_lock);

	switch (attr) {
	case hwmon_fan_target:
		val = FUNC4(val, FAN_RPM_MIN, FAN_RPM_MAX);
		bits = FUNC3(val);
		data->fan_dynamics[channel] =
			((data->fan_dynamics[channel] &
			  ~MAX31790_FAN_DYN_SR_MASK) |
			 (bits << MAX31790_FAN_DYN_SR_SHIFT));
		err = FUNC7(client,
					FUNC0(channel),
					data->fan_dynamics[channel]);
		if (err < 0)
			break;

		sr = FUNC6(data->fan_dynamics[channel]);
		target_count = FUNC2(val, sr);
		target_count = FUNC4(target_count, 0x1, 0x7FF);

		data->target_count[channel] = target_count << 5;

		err = FUNC8(client,
					FUNC1(channel),
					data->target_count[channel]);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	FUNC10(&data->update_lock);

	return err;
}