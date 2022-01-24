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
struct ms5611_state {struct i2c_client* client; int /*<<< orphan*/  read_adc_temp_and_pressure; int /*<<< orphan*/  read_prom_word; int /*<<< orphan*/  reset; } ;
struct iio_dev {int dummy; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 struct iio_dev* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct iio_dev*) ; 
 struct ms5611_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  ms5611_i2c_read_adc_temp_and_pressure ; 
 int /*<<< orphan*/  ms5611_i2c_read_prom_word ; 
 int /*<<< orphan*/  ms5611_i2c_reset ; 
 int FUNC4 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct ms5611_state *st;
	struct iio_dev *indio_dev;

	if (!FUNC1(client->adapter,
				     I2C_FUNC_SMBUS_WRITE_BYTE |
				     I2C_FUNC_SMBUS_READ_WORD_DATA |
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK))
		return -EOPNOTSUPP;

	indio_dev = FUNC0(&client->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC3(indio_dev);
	FUNC2(client, indio_dev);
	st->reset = ms5611_i2c_reset;
	st->read_prom_word = ms5611_i2c_read_prom_word;
	st->read_adc_temp_and_pressure = ms5611_i2c_read_adc_temp_and_pressure;
	st->client = client;

	return FUNC4(indio_dev, &client->dev, id->name, id->driver_data);
}