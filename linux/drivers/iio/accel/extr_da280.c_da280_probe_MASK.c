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
struct iio_dev {char* name; int num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct da280_data {struct i2c_client* client; } ;
typedef  enum da280_chipset { ____Placeholder_da280_chipset } da280_chipset ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int DA280_CHIP_ID ; 
 int /*<<< orphan*/  DA280_REG_CHIP_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int da226 ; 
 int /*<<< orphan*/  da280_channels ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  da280_info ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct da280_data* FUNC8 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct iio_dev *indio_dev;
	struct da280_data *data;
	enum da280_chipset chip;

	ret = FUNC6(client, DA280_REG_CHIP_ID);
	if (ret != DA280_CHIP_ID)
		return (ret < 0) ? ret : -ENODEV;

	indio_dev = FUNC4(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC8(indio_dev);
	data->client = client;
	FUNC5(client, indio_dev);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &da280_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = da280_channels;

	if (FUNC0(&client->dev)) {
		chip = FUNC2(&client->dev);
	} else {
		chip = id->driver_data;
	}

	if (chip == da226) {
		indio_dev->name = "da226";
		indio_dev->num_channels = 2;
	} else {
		indio_dev->name = "da280";
		indio_dev->num_channels = 3;
	}

	ret = FUNC1(client, true);
	if (ret < 0)
		return ret;

	ret = FUNC7(indio_dev);
	if (ret < 0) {
		FUNC3(&client->dev, "device_register failed\n");
		FUNC1(client, false);
	}

	return ret;
}