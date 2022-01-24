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
struct lm80_data {int** fan; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct device*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct lm80_data*,int /*<<< orphan*/ ) ; 
 struct lm80_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 size_t f_min ; 
 int /*<<< orphan*/  lm80_groups ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
		      const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct lm80_data *data;
	int rv;

	data = FUNC3(dev, sizeof(struct lm80_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC6(&data->update_lock);

	/* Initialize the LM80 chip */
	FUNC4(client);

	/* A few vars need to be filled upon startup */
	rv = FUNC5(client, FUNC0(1));
	if (rv < 0)
		return rv;
	data->fan[f_min][0] = rv;
	rv = FUNC5(client, FUNC0(2));
	if (rv < 0)
		return rv;
	data->fan[f_min][1] = rv;

	hwmon_dev = FUNC2(dev, client->name,
							   data, lm80_groups);

	return FUNC1(hwmon_dev);
}