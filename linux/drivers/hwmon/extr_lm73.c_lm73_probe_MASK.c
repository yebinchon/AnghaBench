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
struct lm73_data {int ctrl; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  LM73_REG_CTRL ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (struct device*,int /*<<< orphan*/ ,struct lm73_data*,int /*<<< orphan*/ ) ; 
 struct lm73_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm73_groups ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct lm73_data *data;
	int ctrl;

	data = FUNC4(dev, sizeof(struct lm73_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC6(&data->lock);

	ctrl = FUNC5(client, LM73_REG_CTRL);
	if (ctrl < 0)
		return ctrl;
	data->ctrl = ctrl;

	hwmon_dev = FUNC3(dev, client->name,
							   data, lm73_groups);
	if (FUNC0(hwmon_dev))
		return FUNC1(hwmon_dev);

	FUNC2(dev, "sensor '%s'\n", client->name);

	return 0;
}