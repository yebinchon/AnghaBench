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
struct iio_dev {int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct hdc100x_data {int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HDC100X_REG_CONFIG_ACQ_MODE ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_BYTE ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdc100x_channels ; 
 int /*<<< orphan*/  hdc100x_info ; 
 int /*<<< orphan*/ ** hdc100x_int_time ; 
 int /*<<< orphan*/  hdc100x_scan_masks ; 
 int /*<<< orphan*/  FUNC6 (struct hdc100x_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdc100x_trigger_handler ; 
 int /*<<< orphan*/  FUNC7 (struct hdc100x_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdc_buffer_setup_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct iio_dev*) ; 
 struct hdc100x_data* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct hdc100x_data *data;
	int ret;

	if (!FUNC8(client->adapter, I2C_FUNC_SMBUS_WORD_DATA |
				     I2C_FUNC_SMBUS_BYTE | I2C_FUNC_I2C))
		return -EOPNOTSUPP;

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC10(indio_dev);
	FUNC9(client, indio_dev);
	data->client = client;
	FUNC11(&data->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = FUNC2(&client->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &hdc100x_info;

	indio_dev->channels = hdc100x_channels;
	indio_dev->num_channels = FUNC0(hdc100x_channels);
	indio_dev->available_scan_masks = hdc100x_scan_masks;

	/* be sure we are in a known state */
	FUNC6(data, 0, hdc100x_int_time[0][0]);
	FUNC6(data, 1, hdc100x_int_time[1][0]);
	FUNC7(data, HDC100X_REG_CONFIG_ACQ_MODE, 0);

	ret = FUNC5(&client->dev,
					 indio_dev, NULL,
					 hdc100x_trigger_handler,
					 &hdc_buffer_setup_ops);
	if (ret < 0) {
		FUNC1(&client->dev, "iio triggered buffer setup failed\n");
		return ret;
	}

	return FUNC4(&client->dev, indio_dev);
}