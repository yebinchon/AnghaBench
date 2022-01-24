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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {int vref_cached; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7411_REG_EXT_TEMP_AIN14_LSB ; 
 int /*<<< orphan*/  ADT7411_REG_EXT_TEMP_AIN1_MSB ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int EOPNOTSUPP ; 
 int FUNC2 (struct i2c_client*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct device*,int,long*) ; 
 int FUNC4 (struct device*) ; 
 struct adt7411_data* FUNC5 (struct device*) ; 
#define  hwmon_in_alarm 131 
#define  hwmon_in_input 130 
#define  hwmon_in_max 129 
#define  hwmon_in_min 128 
 int FUNC6 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev, u32 attr, int channel,
				long *val)
{
	struct adt7411_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;

	int ret;
	int reg, lsb_reg, lsb_shift;
	int nr = channel - 1;

	FUNC7(&data->update_lock);
	ret = FUNC4(dev);
	if (ret < 0)
		goto exit_unlock;

	switch (attr) {
	case hwmon_in_input:
		lsb_reg = ADT7411_REG_EXT_TEMP_AIN14_LSB + (nr >> 2);
		lsb_shift = 2 * (nr & 0x03);
		ret = FUNC2(client, lsb_reg,
					  ADT7411_REG_EXT_TEMP_AIN1_MSB + nr,
					  lsb_shift);
		if (ret < 0)
			goto exit_unlock;
		*val = ret * data->vref_cached / 1024;
		ret = 0;
		break;
	case hwmon_in_min:
	case hwmon_in_max:
		reg = (attr == hwmon_in_min)
			? FUNC1(channel)
			: FUNC0(channel);
		ret = FUNC6(client, reg);
		if (ret < 0)
			goto exit_unlock;
		*val = ret * data->vref_cached / 256;
		ret = 0;
		break;
	case hwmon_in_alarm:
		ret = FUNC3(dev, channel, val);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}
 exit_unlock:
	FUNC8(&data->update_lock);
	return ret;
}