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
struct lm87_data {int* in_scale; int channel; int /*<<< orphan*/ ** attr_groups; int /*<<< orphan*/  vrm; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CHAN_NO_VID ; 
 int CHAN_TEMP3 ; 
 int CHAN_VCC_5V ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i2c_client*,int /*<<< orphan*/ **) ; 
 struct lm87_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct lm87_data*) ; 
 int /*<<< orphan*/  lm87_group ; 
 int /*<<< orphan*/  lm87_group_fan1 ; 
 int /*<<< orphan*/  lm87_group_fan2 ; 
 int /*<<< orphan*/  lm87_group_in0_5 ; 
 int /*<<< orphan*/  lm87_group_in6 ; 
 int /*<<< orphan*/  lm87_group_in7 ; 
 int /*<<< orphan*/  lm87_group_temp3 ; 
 int /*<<< orphan*/  lm87_group_vid ; 
 int FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct lm87_data *data;
	struct device *hwmon_dev;
	int err;
	unsigned int group_tail = 0;

	data = FUNC3(&client->dev, sizeof(struct lm87_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);
	FUNC6(&data->update_lock);

	/* Initialize the LM87 chip */
	err = FUNC5(client);
	if (err)
		return err;

	data->in_scale[0] = 2500;
	data->in_scale[1] = 2700;
	data->in_scale[2] = (data->channel & CHAN_VCC_5V) ? 5000 : 3300;
	data->in_scale[3] = 5000;
	data->in_scale[4] = 12000;
	data->in_scale[5] = 2700;
	data->in_scale[6] = 1875;
	data->in_scale[7] = 1875;

	/*
	 * Construct the list of attributes, the list depends on the
	 * configuration of the chip
	 */
	data->attr_groups[group_tail++] = &lm87_group;
	if (data->channel & FUNC0(0))
		data->attr_groups[group_tail++] = &lm87_group_in6;
	else
		data->attr_groups[group_tail++] = &lm87_group_fan1;

	if (data->channel & FUNC0(1))
		data->attr_groups[group_tail++] = &lm87_group_in7;
	else
		data->attr_groups[group_tail++] = &lm87_group_fan2;

	if (data->channel & CHAN_TEMP3)
		data->attr_groups[group_tail++] = &lm87_group_temp3;
	else
		data->attr_groups[group_tail++] = &lm87_group_in0_5;

	if (!(data->channel & CHAN_NO_VID)) {
		data->vrm = FUNC7();
		data->attr_groups[group_tail++] = &lm87_group_vid;
	}

	hwmon_dev = FUNC2(
	    &client->dev, client->name, client, data->attr_groups);
	return FUNC1(hwmon_dev);
}