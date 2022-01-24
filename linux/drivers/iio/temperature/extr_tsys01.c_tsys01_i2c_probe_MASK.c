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
struct tsys01_dev {int /*<<< orphan*/  convert_and_read; int /*<<< orphan*/  read_prom_word; int /*<<< orphan*/  reset; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 struct tsys01_dev* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  ms_sensors_convert_and_read ; 
 int /*<<< orphan*/  ms_sensors_read_prom_word ; 
 int /*<<< orphan*/  ms_sensors_reset ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct tsys01_dev *dev_data;
	struct iio_dev *indio_dev;

	if (!FUNC2(client->adapter,
				     I2C_FUNC_SMBUS_WORD_DATA |
				     I2C_FUNC_SMBUS_WRITE_BYTE |
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
		FUNC0(&client->dev,
			"Adapter does not support some i2c transaction\n");
		return -EOPNOTSUPP;
	}

	indio_dev = FUNC1(&client->dev, sizeof(*dev_data));
	if (!indio_dev)
		return -ENOMEM;

	dev_data = FUNC4(indio_dev);
	dev_data->client = client;
	dev_data->reset = ms_sensors_reset;
	dev_data->read_prom_word = ms_sensors_read_prom_word;
	dev_data->convert_and_read = ms_sensors_convert_and_read;

	FUNC3(client, indio_dev);

	return FUNC5(indio_dev, &client->dev);
}