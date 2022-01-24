#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mcp4725_platform_data {scalar_t__ use_vref; scalar_t__ vref_buffered; } ;
struct mcp4725_data {int id; int ref_mode; int powerdown; int powerdown_mode; int dac_value; void* vdd_reg; void* vref_reg; struct i2c_client* client; } ;
struct TYPE_9__ {TYPE_2__* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
typedef  enum chip_id { ____Placeholder_chip_id } chip_id ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ MCP4725 ; 
 scalar_t__ MCP4726 ; 
 int MCP472X_REF_VDD ; 
 int MCP472X_REF_VREF_BUFFERED ; 
 int MCP472X_REF_VREF_UNBUFFERED ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 struct mcp4725_platform_data* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int,int,int) ; 
 struct iio_dev* FUNC5 (TYPE_2__*,int) ; 
 void* FUNC6 (TYPE_2__*,char*) ; 
 int FUNC7 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct mcp4725_data* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  mcp4725_info ; 
 int FUNC11 (TYPE_2__*,struct mcp4725_platform_data*) ; 
 int FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/ * mcp472x_channel ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int FUNC15 (void*) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mcp4725_data *data;
	struct iio_dev *indio_dev;
	struct mcp4725_platform_data *pdata, pdata_dt;
	u8 inbuf[4];
	u8 pd;
	u8 ref;
	int err;

	indio_dev = FUNC5(&client->dev, sizeof(*data));
	if (indio_dev == NULL)
		return -ENOMEM;
	data = FUNC10(indio_dev);
	FUNC8(client, indio_dev);
	data->client = client;
	if (client->dev.of_node)
		data->id = (enum chip_id)FUNC13(&client->dev);
	else
		data->id = id->driver_data;
	pdata = FUNC3(&client->dev);

	if (!pdata) {
		err = FUNC11(&client->dev, &pdata_dt);
		if (err) {
			FUNC2(&client->dev,
				"invalid platform or devicetree data");
			return err;
		}
		pdata = &pdata_dt;
	}

	if (data->id == MCP4725 && pdata->use_vref) {
		FUNC2(&client->dev,
			"external reference is unavailable on MCP4725");
		return -EINVAL;
	}

	if (!pdata->use_vref && pdata->vref_buffered) {
		FUNC2(&client->dev,
			"buffering is unavailable on the internal reference");
		return -EINVAL;
	}

	if (!pdata->use_vref)
		data->ref_mode = MCP472X_REF_VDD;
	else
		data->ref_mode = pdata->vref_buffered ?
			MCP472X_REF_VREF_BUFFERED :
			MCP472X_REF_VREF_UNBUFFERED;

	data->vdd_reg = FUNC6(&client->dev, "vdd");
	if (FUNC0(data->vdd_reg))
		return FUNC1(data->vdd_reg);

	err = FUNC15(data->vdd_reg);
	if (err)
		return err;

	if (pdata->use_vref) {
		data->vref_reg = FUNC6(&client->dev, "vref");
		if (FUNC0(data->vref_reg)) {
			err = FUNC1(data->vref_reg);
			goto err_disable_vdd_reg;
		}

		err = FUNC15(data->vref_reg);
		if (err)
			goto err_disable_vdd_reg;
	}

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = id->name;
	indio_dev->info = &mcp4725_info;
	indio_dev->channels = &mcp472x_channel[id->driver_data];
	indio_dev->num_channels = 1;
	indio_dev->modes = INDIO_DIRECT_MODE;

	/* read current DAC value and settings */
	err = FUNC7(client, inbuf, data->id == MCP4725 ? 3 : 4);

	if (err < 0) {
		FUNC2(&client->dev, "failed to read DAC value");
		goto err_disable_vref_reg;
	}
	pd = (inbuf[0] >> 1) & 0x3;
	data->powerdown = pd > 0;
	data->powerdown_mode = pd ? pd - 1 : 2; /* largest resistor to gnd */
	data->dac_value = (inbuf[1] << 4) | (inbuf[2] >> 4);
	if (data->id == MCP4726)
		ref = (inbuf[3] >> 3) & 0x3;

	if (data->id == MCP4726 && ref != data->ref_mode) {
		FUNC4(&client->dev,
			"voltage reference mode differs (conf: %u, eeprom: %u), setting %u",
			data->ref_mode, ref, data->ref_mode);
		err = FUNC12(indio_dev);
		if (err < 0)
			goto err_disable_vref_reg;
	}
 
	err = FUNC9(indio_dev);
	if (err)
		goto err_disable_vref_reg;

	return 0;

err_disable_vref_reg:
	if (data->vref_reg)
		FUNC14(data->vref_reg);

err_disable_vdd_reg:
	FUNC14(data->vdd_reg);

	return err;
}