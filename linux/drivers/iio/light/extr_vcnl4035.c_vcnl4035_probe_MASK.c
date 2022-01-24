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
struct vcnl4035_data {struct regmap* regmap; struct i2c_client* client; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  VCNL4035_DRV_NAME ; 
 int /*<<< orphan*/  VCNL4035_MODE_ALS_DISABLE ; 
 int /*<<< orphan*/  VCNL4035_SLEEP_DELAY_MS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct regmap* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct vcnl4035_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vcnl4035_channels ; 
 int /*<<< orphan*/  vcnl4035_info ; 
 int FUNC13 (struct vcnl4035_data*) ; 
 int FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  vcnl4035_regmap_config ; 
 int /*<<< orphan*/  FUNC15 (struct vcnl4035_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct vcnl4035_data *data;
	struct iio_dev *indio_dev;
	struct regmap *regmap;
	int ret;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	regmap = FUNC5(client, &vcnl4035_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "regmap_init failed!\n");
		return FUNC2(regmap);
	}

	data = FUNC8(indio_dev);
	FUNC6(client, indio_dev);
	data->client = client;
	data->regmap = regmap;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &vcnl4035_info;
	indio_dev->name = VCNL4035_DRV_NAME;
	indio_dev->channels = vcnl4035_channels;
	indio_dev->num_channels = FUNC0(vcnl4035_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC13(data);
	if (ret < 0) {
		FUNC3(&client->dev, "vcnl4035 chip init failed\n");
		return ret;
	}

	if (client->irq > 0) {
		ret = FUNC14(indio_dev);
		if (ret < 0) {
			FUNC3(&client->dev, "vcnl4035 unable init trigger\n");
			goto fail_poweroff;
		}
	}

	ret = FUNC10(&client->dev);
	if (ret < 0)
		goto fail_poweroff;

	ret = FUNC7(indio_dev);
	if (ret < 0)
		goto fail_poweroff;

	FUNC9(&client->dev);
	FUNC11(&client->dev, VCNL4035_SLEEP_DELAY_MS);
	FUNC12(&client->dev);

	return 0;

fail_poweroff:
	FUNC15(data, VCNL4035_MODE_ALS_DISABLE);
	return ret;
}