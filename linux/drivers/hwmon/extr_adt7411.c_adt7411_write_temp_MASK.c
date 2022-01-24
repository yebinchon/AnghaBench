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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 long FUNC2 (long,int) ; 
 int EOPNOTSUPP ; 
 long FUNC3 (long,int,int) ; 
 struct adt7411_data* FUNC4 (struct device*) ; 
#define  hwmon_temp_max 129 
#define  hwmon_temp_min 128 
 int FUNC5 (struct i2c_client*,int,long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct adt7411_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	int reg;

	val = FUNC3(val, -128000, 127000);
	val = FUNC2(val, 1000);

	switch (attr) {
	case hwmon_temp_min:
		reg = FUNC1(channel);
		break;
	case hwmon_temp_max:
		reg = FUNC0(channel);
		break;
	default:
		return -EOPNOTSUPP;
	}

	return FUNC5(client, reg, val);
}