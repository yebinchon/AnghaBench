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
struct mmc35240_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  res; struct regmap* regmap; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  MMC35240_16_BITS_SLOW ; 
 int /*<<< orphan*/  MMC35240_DRV_NAME ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct regmap* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 struct mmc35240_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  mmc35240_channels ; 
 int /*<<< orphan*/  mmc35240_info ; 
 int FUNC9 (struct mmc35240_data*) ; 
 int /*<<< orphan*/  mmc35240_regmap_config ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct mmc35240_data *data;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC6(client, &mmc35240_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "regmap initialization failed\n");
		return FUNC2(regmap);
	}

	data = FUNC8(indio_dev);
	FUNC7(client, indio_dev);
	data->client = client;
	data->regmap = regmap;
	data->res = MMC35240_16_BITS_SLOW;

	FUNC10(&data->mutex);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &mmc35240_info;
	indio_dev->name = MMC35240_DRV_NAME;
	indio_dev->channels = mmc35240_channels;
	indio_dev->num_channels = FUNC0(mmc35240_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC9(data);
	if (ret < 0) {
		FUNC3(&client->dev, "mmc35240 chip init failed\n");
		return ret;
	}
	return FUNC5(&client->dev, indio_dev);
}