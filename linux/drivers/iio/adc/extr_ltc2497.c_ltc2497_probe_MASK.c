#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ltc2497_st {int /*<<< orphan*/  ref; int /*<<< orphan*/  time_prev; int /*<<< orphan*/  addr_prev; struct i2c_client* client; } ;
struct iio_map {int dummy; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct iio_dev {TYPE_3__ dev; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ platform_data; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LTC2497_CONFIG_DEFAULT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 struct iio_dev* FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*,struct iio_map*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 
 struct ltc2497_st* FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  ltc2497_channel ; 
 int /*<<< orphan*/  ltc2497_info ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct ltc2497_st *st;
	struct iio_map *plat_data;
	int ret;

	if (!FUNC6(client->adapter, I2C_FUNC_I2C |
				     I2C_FUNC_SMBUS_WRITE_BYTE))
		return -EOPNOTSUPP;

	indio_dev = FUNC4(&client->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC12(indio_dev);
	FUNC7(client, indio_dev);
	st->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = id->name;
	indio_dev->info = &ltc2497_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ltc2497_channel;
	indio_dev->num_channels = FUNC0(ltc2497_channel);

	st->ref = FUNC5(&client->dev, "vref");
	if (FUNC1(st->ref))
		return FUNC2(st->ref);

	ret = FUNC15(st->ref);
	if (ret < 0)
		return ret;

	if (client->dev.platform_data) {
		plat_data = ((struct iio_map *)client->dev.platform_data);
		ret = FUNC10(indio_dev, plat_data);
		if (ret) {
			FUNC3(&indio_dev->dev, "iio map err: %d\n", ret);
			goto err_regulator_disable;
		}
	}

	ret = FUNC8(st->client, LTC2497_CONFIG_DEFAULT);
	if (ret < 0)
		goto err_array_unregister;

	st->addr_prev = LTC2497_CONFIG_DEFAULT;
	st->time_prev = FUNC13();

	ret = FUNC9(indio_dev);
	if (ret < 0)
		goto err_array_unregister;

	return 0;

err_array_unregister:
	FUNC11(indio_dev);

err_regulator_disable:
	FUNC14(st->ref);

	return ret;
}