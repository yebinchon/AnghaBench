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
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct atxp1_data {int vrm; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  atxp1_groups ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int) ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ ,struct atxp1_data*,int /*<<< orphan*/ ) ; 
 struct atxp1_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct atxp1_data *data;
	struct device *hwmon_dev;

	data = FUNC5(dev, sizeof(struct atxp1_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* Get VRM */
	data->vrm = FUNC7();
	if (data->vrm != 90 && data->vrm != 91) {
		FUNC2(dev, "atxp1: Not supporting VRM %d.%d\n",
			data->vrm / 10, data->vrm % 10);
		return -ENODEV;
	}

	data->client = client;
	FUNC6(&data->update_lock);

	hwmon_dev = FUNC4(dev, client->name,
							   data,
							   atxp1_groups);
	if (FUNC0(hwmon_dev))
		return FUNC1(hwmon_dev);

	FUNC3(dev, "Using VRM: %d.%d\n", data->vrm / 10, data->vrm % 10);

	return 0;
}