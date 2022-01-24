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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1021_data {char low_power; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1021_REG_CONFIG_R ; 
 int /*<<< orphan*/  ADM1021_REG_CONFIG_W ; 
 struct adm1021_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *devattr,
			       const char *buf, size_t count)
{
	struct adm1021_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	char low_power;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;
	low_power = val != 0;

	FUNC4(&data->update_lock);
	if (low_power != data->low_power) {
		int config = FUNC1(
			client, ADM1021_REG_CONFIG_R);
		data->low_power = low_power;
		FUNC2(client, ADM1021_REG_CONFIG_W,
			(config & 0xBF) | (low_power << 6));
	}
	FUNC5(&data->update_lock);

	return count;
}