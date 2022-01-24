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
struct mxc6255_data {struct regmap* regmap; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 unsigned int MXC6255_CHIP_ID ; 
 int /*<<< orphan*/  MXC6255_DRV_NAME ; 
 int /*<<< orphan*/  MXC6255_REG_CHIP_ID ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct regmap* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 struct mxc6255_data* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  mxc6255_channels ; 
 int /*<<< orphan*/  mxc6255_info ; 
 int /*<<< orphan*/  mxc6255_regmap_config ; 
 int FUNC10 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mxc6255_data *data;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	unsigned int chip_id;
	int ret;

	indio_dev = FUNC5(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC7(client, &mxc6255_regmap_config);
	if (FUNC1(regmap)) {
		FUNC4(&client->dev, "Error initializing regmap\n");
		return FUNC2(regmap);
	}

	data = FUNC9(indio_dev);
	FUNC8(client, indio_dev);
	data->client = client;
	data->regmap = regmap;

	indio_dev->name = MXC6255_DRV_NAME;
	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = mxc6255_channels;
	indio_dev->num_channels = FUNC0(mxc6255_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mxc6255_info;

	ret = FUNC10(data->regmap, MXC6255_REG_CHIP_ID, &chip_id);
	if (ret < 0) {
		FUNC4(&client->dev, "Error reading chip id %d\n", ret);
		return ret;
	}

	if ((chip_id & 0x1f) != MXC6255_CHIP_ID) {
		FUNC4(&client->dev, "Invalid chip id %x\n", chip_id);
		return -ENODEV;
	}

	FUNC3(&client->dev, "Chip id %x\n", chip_id);

	ret = FUNC6(&client->dev, indio_dev);
	if (ret < 0) {
		FUNC4(&client->dev, "Could not register IIO device\n");
		return ret;
	}

	return 0;
}