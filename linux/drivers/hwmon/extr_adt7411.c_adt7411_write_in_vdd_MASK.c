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
 int ADT7411_REG_VDD_HIGH ; 
 int ADT7411_REG_VDD_LOW ; 
 long FUNC0 (long,int) ; 
 int EOPNOTSUPP ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 struct adt7411_data* FUNC2 (struct device*) ; 
#define  hwmon_in_max 129 
#define  hwmon_in_min 128 
 int FUNC3 (struct i2c_client*,int,long) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr, long val)
{
	struct adt7411_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int reg;

	val = FUNC1(val, 0, 255 * 7000 / 256);
	val = FUNC0(val * 256, 7000);

	switch (attr) {
	case hwmon_in_min:
		reg = ADT7411_REG_VDD_LOW;
		break;
	case hwmon_in_max:
		reg = ADT7411_REG_VDD_HIGH;
		break;
	default:
		return -EOPNOTSUPP;
	}

	return FUNC3(client, reg, val);
}