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
struct mc3230_data {struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int MC3230_CHIP_ID ; 
 int /*<<< orphan*/  MC3230_MODE_OPCON_STANDBY ; 
 int /*<<< orphan*/  MC3230_MODE_OPCON_WAKE ; 
 int MC3230_PRODUCT_CODE ; 
 int /*<<< orphan*/  MC3230_REG_CHIP_ID ; 
 int /*<<< orphan*/  MC3230_REG_PRODUCT_CODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct mc3230_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  mc3230_channels ; 
 int /*<<< orphan*/  mc3230_info ; 
 int FUNC7 (struct mc3230_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct mc3230_data *data;

	/* First check chip-id and product-id */
	ret = FUNC4(client, MC3230_REG_CHIP_ID);
	if (ret != MC3230_CHIP_ID)
		return (ret < 0) ? ret : -ENODEV;

	ret = FUNC4(client, MC3230_REG_PRODUCT_CODE);
	if (ret != MC3230_PRODUCT_CODE)
		return (ret < 0) ? ret : -ENODEV;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev) {
		FUNC1(&client->dev, "iio allocation failed!\n");
		return -ENOMEM;
	}

	data = FUNC6(indio_dev);
	data->client = client;
	FUNC3(client, indio_dev);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &mc3230_info;
	indio_dev->name = "mc3230";
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = mc3230_channels;
	indio_dev->num_channels = FUNC0(mc3230_channels);

	ret = FUNC7(data, MC3230_MODE_OPCON_WAKE);
	if (ret < 0)
		return ret;

	ret = FUNC5(indio_dev);
	if (ret < 0) {
		FUNC1(&client->dev, "device_register failed\n");
		FUNC7(data, MC3230_MODE_OPCON_STANDBY);
	}

	return ret;
}