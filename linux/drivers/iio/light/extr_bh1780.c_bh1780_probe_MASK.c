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
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct bh1780_data {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BH1780_PON ; 
 int /*<<< orphan*/  BH1780_PON_DELAY ; 
 int /*<<< orphan*/  BH1780_REG_CONTROL ; 
 int /*<<< orphan*/  BH1780_REG_PARTID ; 
 int BH1780_REVMASK ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  bh1780_channels ; 
 int /*<<< orphan*/  bh1780_info ; 
 int FUNC1 (struct bh1780_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bh1780_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct bh1780_data* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct bh1780_data *bh1780;
	struct i2c_adapter *adapter = client->adapter;
	struct iio_dev *indio_dev;

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_BYTE))
		return -EIO;

	indio_dev = FUNC4(&client->dev, sizeof(*bh1780));
	if (!indio_dev)
		return -ENOMEM;

	bh1780 = FUNC8(indio_dev);
	bh1780->client = client;
	FUNC6(client, indio_dev);

	/* Power up the device */
	ret = FUNC2(bh1780, BH1780_REG_CONTROL, BH1780_PON);
	if (ret < 0)
		return ret;
	FUNC9(BH1780_PON_DELAY);
	FUNC12(&client->dev);
	FUNC15(&client->dev);
	FUNC11(&client->dev);

	ret = FUNC1(bh1780, BH1780_REG_PARTID);
	if (ret < 0)
		goto out_disable_pm;
	FUNC3(&client->dev,
		 "Ambient Light Sensor, Rev : %lu\n",
		 (ret & BH1780_REVMASK));

	/*
	 * As the device takes 250 ms to even come up with a fresh
	 * measurement after power-on, do not shut it down unnecessarily.
	 * Set autosuspend to a five seconds.
	 */
	FUNC16(&client->dev, 5000);
	FUNC17(&client->dev);
	FUNC13(&client->dev);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &bh1780_info;
	indio_dev->name = "bh1780";
	indio_dev->channels = bh1780_channels;
	indio_dev->num_channels = FUNC0(bh1780_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC7(indio_dev);
	if (ret)
		goto out_disable_pm;
	return 0;

out_disable_pm:
	FUNC14(&client->dev);
	FUNC10(&client->dev);
	return ret;
}