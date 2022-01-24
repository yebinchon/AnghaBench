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
struct mlx90632_data {int emissivity; struct regmap* regmap; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 unsigned int MLX90632_DSP_MASK ; 
 unsigned int MLX90632_DSP_VERSION ; 
 int /*<<< orphan*/  MLX90632_EE_VERSION ; 
 unsigned int MLX90632_ID_CONSUMER ; 
 unsigned int MLX90632_ID_MEDICAL ; 
 int /*<<< orphan*/  MLX90632_SLEEP_DELAY_MS ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct regmap* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*) ; 
 struct mlx90632_data* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  mlx90632_channels ; 
 int /*<<< orphan*/  mlx90632_info ; 
 int /*<<< orphan*/  mlx90632_regmap ; 
 int /*<<< orphan*/  FUNC10 (struct mlx90632_data*) ; 
 int FUNC11 (struct mlx90632_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct mlx90632_data *mlx90632;
	struct regmap *regmap;
	int ret;
	unsigned int read;

	indio_dev = FUNC5(&client->dev, sizeof(*mlx90632));
	if (!indio_dev) {
		FUNC4(&client->dev, "Failed to allocate device\n");
		return -ENOMEM;
	}

	regmap = FUNC6(client, &mlx90632_regmap);
	if (FUNC1(regmap)) {
		ret = FUNC2(regmap);
		FUNC4(&client->dev, "Failed to allocate regmap: %d\n", ret);
		return ret;
	}

	mlx90632 = FUNC9(indio_dev);
	FUNC7(client, indio_dev);
	mlx90632->client = client;
	mlx90632->regmap = regmap;

	FUNC12(&mlx90632->lock);
	indio_dev->dev.parent = &client->dev;
	indio_dev->name = id->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mlx90632_info;
	indio_dev->channels = mlx90632_channels;
	indio_dev->num_channels = FUNC0(mlx90632_channels);

	ret = FUNC11(mlx90632);
	if (ret < 0) {
		FUNC4(&client->dev, "Wakeup failed: %d\n", ret);
		return ret;
	}

	ret = FUNC18(mlx90632->regmap, MLX90632_EE_VERSION, &read);
	if (ret < 0) {
		FUNC4(&client->dev, "read of version failed: %d\n", ret);
		return ret;
	}
	if (read == MLX90632_ID_MEDICAL) {
		FUNC3(&client->dev,
			"Detected Medical EEPROM calibration %x\n", read);
	} else if (read == MLX90632_ID_CONSUMER) {
		FUNC3(&client->dev,
			"Detected Consumer EEPROM calibration %x\n", read);
	} else if ((read & MLX90632_DSP_MASK) == MLX90632_DSP_VERSION) {
		FUNC3(&client->dev,
			"Detected Unknown EEPROM calibration %x\n", read);	
	} else {
		FUNC4(&client->dev,
			"Wrong DSP version %x (expected %x)\n",
			read, MLX90632_DSP_VERSION);
		return -EPROTONOSUPPORT;
	}

	mlx90632->emissivity = 1000;

	FUNC13(&client->dev);
	ret = FUNC15(&client->dev);
	if (ret < 0) {
		FUNC10(mlx90632);
		return ret;
	}
	FUNC14(&client->dev);
	FUNC16(&client->dev, MLX90632_SLEEP_DELAY_MS);
	FUNC17(&client->dev);

	return FUNC8(indio_dev);
}