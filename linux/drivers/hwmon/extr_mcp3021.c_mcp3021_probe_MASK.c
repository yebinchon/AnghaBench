#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mcp3021_data {int vdd; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  output_res; int /*<<< orphan*/  sar_mask; int /*<<< orphan*/  sar_shift; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCP3021_OUTPUT_RES ; 
 int /*<<< orphan*/  MCP3021_SAR_MASK ; 
 int /*<<< orphan*/  MCP3021_SAR_SHIFT ; 
 void* MCP3021_VDD_REF_DEFAULT ; 
 int MCP3021_VDD_REF_MAX ; 
 int MCP3021_VDD_REF_MIN ; 
 int /*<<< orphan*/  MCP3221_OUTPUT_RES ; 
 int /*<<< orphan*/  MCP3221_SAR_MASK ; 
 int /*<<< orphan*/  MCP3221_SAR_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__ dev_attr_in0_input ; 
 int* FUNC2 (TYPE_1__*) ; 
 struct mcp3021_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct mcp3021_data*) ; 
#define  mcp3021 129 
#define  mcp3221 128 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	int err;
	struct mcp3021_data *data = NULL;
	struct device_node *np = client->dev.of_node;

	if (!FUNC5(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	data = FUNC3(&client->dev, sizeof(struct mcp3021_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC6(client, data);

	if (np) {
		if (!FUNC7(np, "reference-voltage-microvolt",
					  &data->vdd))
			data->vdd /= 1000;
		else
			data->vdd = MCP3021_VDD_REF_DEFAULT;
	} else {
		u32 *pdata = FUNC2(&client->dev);

		if (pdata)
			data->vdd = *pdata;
		else
			data->vdd = MCP3021_VDD_REF_DEFAULT;
	}

	switch (id->driver_data) {
	case mcp3021:
		data->sar_shift = MCP3021_SAR_SHIFT;
		data->sar_mask = MCP3021_SAR_MASK;
		data->output_res = MCP3021_OUTPUT_RES;
		break;

	case mcp3221:
		data->sar_shift = MCP3221_SAR_SHIFT;
		data->sar_mask = MCP3221_SAR_MASK;
		data->output_res = MCP3221_OUTPUT_RES;
		break;
	}

	if (data->vdd > MCP3021_VDD_REF_MAX || data->vdd < MCP3021_VDD_REF_MIN)
		return -EINVAL;

	err = FUNC8(&client->dev.kobj, &dev_attr_in0_input.attr);
	if (err)
		return err;

	data->hwmon_dev = FUNC4(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC9(&client->dev.kobj, &dev_attr_in0_input.attr);
	return err;
}