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
struct lm95245_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 struct device* FUNC3 (struct device*,int /*<<< orphan*/ ,struct lm95245_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lm95245_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lm95245_chip_info ; 
 int FUNC6 (struct lm95245_data*) ; 
 int /*<<< orphan*/  lm95245_regmap_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct lm95245_data *data;
	struct device *hwmon_dev;
	int ret;

	data = FUNC4(dev, sizeof(struct lm95245_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->regmap = FUNC5(client, &lm95245_regmap_config);
	if (FUNC0(data->regmap))
		return FUNC1(data->regmap);

	FUNC7(&data->update_lock);

	/* Initialize the LM95245 chip */
	ret = FUNC6(data);
	if (ret < 0)
		return ret;

	hwmon_dev = FUNC3(dev, client->name,
							 data,
							 &lm95245_chip_info,
							 NULL);
	return FUNC2(hwmon_dev);
}