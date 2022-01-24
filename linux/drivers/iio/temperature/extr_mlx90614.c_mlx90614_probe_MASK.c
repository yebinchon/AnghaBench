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
struct mlx90614_data {scalar_t__ wakeup_gpio; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int num_channels; void* channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  MLX90614_AUTOSLEEP_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct mlx90614_data* FUNC5 (struct iio_dev*) ; 
 void* mlx90614_channels ; 
 int /*<<< orphan*/  mlx90614_info ; 
 int FUNC6 (struct i2c_client*) ; 
 scalar_t__ FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx90614_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct mlx90614_data *data;
	int ret;

	if (!FUNC2(client->adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -EOPNOTSUPP;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC5(indio_dev);
	FUNC3(client, indio_dev);
	data->client = client;
	FUNC9(&data->lock);
	data->wakeup_gpio = FUNC7(client);

	FUNC8(data);

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = id->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mlx90614_info;

	ret = FUNC6(client);
	switch (ret) {
	case 0:
		FUNC0(&client->dev, "Found single sensor");
		indio_dev->channels = mlx90614_channels;
		indio_dev->num_channels = 2;
		break;
	case 1:
		FUNC0(&client->dev, "Found dual sensor");
		indio_dev->channels = mlx90614_channels;
		indio_dev->num_channels = 3;
		break;
	default:
		return ret;
	}

	if (data->wakeup_gpio) {
		FUNC12(&client->dev,
						 MLX90614_AUTOSLEEP_DELAY);
		FUNC13(&client->dev);
		FUNC11(&client->dev);
		FUNC10(&client->dev);
	}

	return FUNC4(indio_dev);
}