#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct noa1305_priv {struct regmap* regmap; struct i2c_client* client; struct regmap* vin_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 unsigned int NOA1305_DEVICE_ID ; 
 int /*<<< orphan*/  NOA1305_DRIVER_NAME ; 
 int /*<<< orphan*/  NOA1305_INTEGR_TIME_800MS ; 
 int /*<<< orphan*/  NOA1305_POWER_CONTROL_ON ; 
 int /*<<< orphan*/  NOA1305_REG_DEVICE_ID_LSB ; 
 int /*<<< orphan*/  NOA1305_REG_INTEGRATION_TIME ; 
 int /*<<< orphan*/  NOA1305_REG_POWER_CONTROL ; 
 int /*<<< orphan*/  NOA1305_REG_RESET ; 
 int /*<<< orphan*/  NOA1305_RESET_RESET ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct noa1305_priv*) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct regmap* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 struct noa1305_priv* FUNC10 (struct iio_dev*) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noa1305_channels ; 
 int /*<<< orphan*/  noa1305_info ; 
 int /*<<< orphan*/  noa1305_reg_remove ; 
 int /*<<< orphan*/  noa1305_regmap_config ; 
 int FUNC12 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct regmap*) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct noa1305_priv *priv;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	__le16 data;
	unsigned int dev_id;
	int ret;

	indio_dev = FUNC5(&client->dev, sizeof(*priv));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC7(client, &noa1305_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "Regmap initialization failed.\n");
		return FUNC2(regmap);
	}

	priv = FUNC10(indio_dev);

	priv->vin_reg = FUNC8(&client->dev, "vin");
	if (FUNC1(priv->vin_reg)) {
		FUNC3(&client->dev, "get regulator vin failed\n");
		return FUNC2(priv->vin_reg);
	}

	ret = FUNC14(priv->vin_reg);
	if (ret) {
		FUNC3(&client->dev, "enable regulator vin failed\n");
		return ret;
	}

	ret = FUNC4(&client->dev, noa1305_reg_remove, priv);
	if (ret) {
		FUNC3(&client->dev, "addition of devm action failed\n");
		return ret;
	}

	FUNC9(client, indio_dev);
	priv->client = client;
	priv->regmap = regmap;

	ret = FUNC12(regmap, NOA1305_REG_DEVICE_ID_LSB, &data, 2);
	if (ret < 0) {
		FUNC3(&client->dev, "ID reading failed: %d\n", ret);
		return ret;
	}

	dev_id = FUNC11(data);
	if (dev_id != NOA1305_DEVICE_ID) {
		FUNC3(&client->dev, "Unknown device ID: 0x%x\n", dev_id);
		return -ENODEV;
	}

	ret = FUNC13(regmap, NOA1305_REG_POWER_CONTROL,
			   NOA1305_POWER_CONTROL_ON);
	if (ret < 0) {
		FUNC3(&client->dev, "Enabling power control failed\n");
		return ret;
	}

	ret = FUNC13(regmap, NOA1305_REG_RESET, NOA1305_RESET_RESET);
	if (ret < 0) {
		FUNC3(&client->dev, "Device reset failed\n");
		return ret;
	}

	ret = FUNC13(regmap, NOA1305_REG_INTEGRATION_TIME,
			   NOA1305_INTEGR_TIME_800MS);
	if (ret < 0) {
		FUNC3(&client->dev, "Setting integration time failed\n");
		return ret;
	}

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &noa1305_info;
	indio_dev->channels = noa1305_channels;
	indio_dev->num_channels = FUNC0(noa1305_channels);
	indio_dev->name = NOA1305_DRIVER_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC6(&client->dev, indio_dev);
	if (ret)
		FUNC3(&client->dev, "registering device failed\n");

	return ret;
}