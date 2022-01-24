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
struct sht21 {int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct sht21*,int /*<<< orphan*/ ) ; 
 struct sht21* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sht21_groups ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct sht21 *sht21;

	if (!FUNC4(client->adapter,
				     I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC1(&client->dev,
			"adapter does not support SMBus word transactions\n");
		return -ENODEV;
	}

	sht21 = FUNC3(dev, sizeof(*sht21), GFP_KERNEL);
	if (!sht21)
		return -ENOMEM;

	sht21->client = client;

	FUNC5(&sht21->lock);

	hwmon_dev = FUNC2(dev, client->name,
							   sht21, sht21_groups);
	return FUNC0(hwmon_dev);
}