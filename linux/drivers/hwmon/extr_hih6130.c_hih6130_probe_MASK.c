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
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;
struct hih6130 {int write_length; int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_QUICK ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct hih6130*,int /*<<< orphan*/ ) ; 
 struct hih6130* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hih6130_groups ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
				   const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct hih6130 *hih6130;
	struct device *hwmon_dev;

	if (!FUNC4(client->adapter, I2C_FUNC_I2C)) {
		FUNC1(&client->dev, "adapter does not support true I2C\n");
		return -ENODEV;
	}

	hih6130 = FUNC3(dev, sizeof(*hih6130), GFP_KERNEL);
	if (!hih6130)
		return -ENOMEM;

	hih6130->client = client;
	FUNC5(&hih6130->lock);

	if (!FUNC4(client->adapter, I2C_FUNC_SMBUS_QUICK))
		hih6130->write_length = 1;

	hwmon_dev = FUNC2(dev, client->name,
							   hih6130,
							   hih6130_groups);
	return FUNC0(hwmon_dev);
}