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
typedef  int u16 ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct ds620_data {struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS620_REG_CONF ; 
 scalar_t__ FUNC0 (struct ds620_data*) ; 
 int FUNC1 (struct ds620_data*) ; 
 struct ds620_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *da,
			  char *buf)
{
	struct sensor_device_attribute *attr = FUNC6(da);
	struct ds620_data *data = FUNC2(dev);
	struct i2c_client *client;
	u16 conf, new_conf;
	int res;

	if (FUNC0(data))
		return FUNC1(data);

	client = data->client;

	/* reset alarms if necessary */
	res = FUNC3(client, DS620_REG_CONF);
	if (res < 0)
		return res;

	new_conf = conf = res;
	new_conf &= ~attr->index;
	if (conf != new_conf) {
		res = FUNC4(client, DS620_REG_CONF,
						   new_conf);
		if (res < 0)
			return res;
	}

	return FUNC5(buf, "%d\n", !!(conf & attr->index));
}