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
struct thermal_cooling_device {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct max6650_data {int nr_fans; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THERMAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct thermal_cooling_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct thermal_cooling_device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (struct device*,int /*<<< orphan*/ ,struct max6650_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct max6650_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct thermal_cooling_device* FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct max6650_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max6650_data*) ; 
 int /*<<< orphan*/  max6650_chip_info ; 
 int /*<<< orphan*/  max6650_cooling_ops ; 
 int /*<<< orphan*/  max6650_dt_match ; 
 int /*<<< orphan*/  max6650_groups ; 
 int FUNC9 (struct max6650_data*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct thermal_cooling_device *cooling_dev;
	struct device *dev = &client->dev;
	const struct of_device_id *of_id =
		FUNC11(FUNC12(max6650_dt_match), dev);
	struct max6650_data *data;
	struct device *hwmon_dev;
	int err;

	data = FUNC6(dev, sizeof(struct max6650_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC8(client, data);
	FUNC10(&data->update_lock);
	data->nr_fans = of_id ? (int)(uintptr_t)of_id->data : id->driver_data;

	/*
	 * Initialize the max6650 chip
	 */
	err = FUNC9(data, client);
	if (err)
		return err;

	hwmon_dev = FUNC5(dev,
							 client->name, data,
							 &max6650_chip_info,
							 max6650_groups);
	err = FUNC3(hwmon_dev);
	if (err)
		return err;

	if (FUNC0(CONFIG_THERMAL)) {
		cooling_dev = FUNC7(dev,
						dev->of_node, client->name,
						data, &max6650_cooling_ops);
		if (FUNC1(cooling_dev)) {
			FUNC4(dev, "thermal cooling device register failed: %ld\n",
				 FUNC2(cooling_dev));
		}
	}

	return 0;
}