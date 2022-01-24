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
 int /*<<< orphan*/  ADT7411_REG_INT_TEMP_VDD_LSB ; 
 int /*<<< orphan*/  ADT7411_REG_VDD_HIGH ; 
 int /*<<< orphan*/  ADT7411_REG_VDD_LOW ; 
 int /*<<< orphan*/  ADT7411_REG_VDD_MSB ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,long*) ; 
 struct adt7411_data* FUNC2 (struct device*) ; 
#define  hwmon_in_alarm 131 
#define  hwmon_in_input 130 
#define  hwmon_in_max 129 
#define  hwmon_in_min 128 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, long *val)
{
	struct adt7411_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int ret;

	switch (attr) {
	case hwmon_in_input:
		ret = FUNC0(client, ADT7411_REG_INT_TEMP_VDD_LSB,
					  ADT7411_REG_VDD_MSB, 2);
		if (ret < 0)
			return ret;
		*val = ret * 7000 / 1024;
		return 0;
	case hwmon_in_min:
		ret = FUNC3(client, ADT7411_REG_VDD_LOW);
		if (ret < 0)
			return ret;
		*val = ret * 7000 / 256;
		return 0;
	case hwmon_in_max:
		ret = FUNC3(client, ADT7411_REG_VDD_HIGH);
		if (ret < 0)
			return ret;
		*val = ret * 7000 / 256;
		return 0;
	case hwmon_in_alarm:
		return FUNC1(dev, 0, val);
	default:
		return -EOPNOTSUPP;
	}
}