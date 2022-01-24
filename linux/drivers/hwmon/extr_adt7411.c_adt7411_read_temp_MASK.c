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
struct adt7411_data {struct i2c_client* client; } ;

/* Variables and functions */
 int ADT7411_REG_EXT_TEMP_AIN14_LSB ; 
 int ADT7411_REG_EXT_TEMP_AIN1_MSB ; 
 int ADT7411_REG_INT_TEMP_MSB ; 
 int ADT7411_REG_INT_TEMP_VDD_LSB ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int EOPNOTSUPP ; 
 int FUNC2 (struct i2c_client*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int,int,long*) ; 
 struct adt7411_data* FUNC4 (struct device*) ; 
#define  hwmon_temp_fault 133 
#define  hwmon_temp_input 132 
#define  hwmon_temp_max 131 
#define  hwmon_temp_max_alarm 130 
#define  hwmon_temp_min 129 
#define  hwmon_temp_min_alarm 128 
 int FUNC5 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, u32 attr, int channel,
			     long *val)
{
	struct adt7411_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	int ret, reg, regl, regh;

	switch (attr) {
	case hwmon_temp_input:
		regl = channel ? ADT7411_REG_EXT_TEMP_AIN14_LSB :
				 ADT7411_REG_INT_TEMP_VDD_LSB;
		regh = channel ? ADT7411_REG_EXT_TEMP_AIN1_MSB :
				 ADT7411_REG_INT_TEMP_MSB;
		ret = FUNC2(client, regl, regh, 0);
		if (ret < 0)
			return ret;
		ret = ret & 0x200 ? ret - 0x400 : ret; /* 10 bit signed */
		*val = ret * 250;
		return 0;
	case hwmon_temp_min:
	case hwmon_temp_max:
		reg = (attr == hwmon_temp_min)
			? FUNC1(channel)
			: FUNC0(channel);
		ret = FUNC5(client, reg);
		if (ret < 0)
			return ret;
		ret = ret & 0x80 ? ret - 0x100 : ret; /* 8 bit signed */
		*val = ret * 1000;
		return 0;
	case hwmon_temp_min_alarm:
	case hwmon_temp_max_alarm:
	case hwmon_temp_fault:
		return FUNC3(dev, attr, channel, val);
	default:
		return -EOPNOTSUPP;
	}
}