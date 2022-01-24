#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mcp4018_data {int /*<<< orphan*/ * cfg; struct i2c_client* client; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;
struct TYPE_4__ {size_t driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct iio_dev* FUNC1 (struct device*,int) ; 
 int FUNC2 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 struct mcp4018_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/ * mcp4018_cfg ; 
 int /*<<< orphan*/  mcp4018_channel ; 
 int /*<<< orphan*/  mcp4018_id ; 
 int /*<<< orphan*/  mcp4018_info ; 
 int /*<<< orphan*/ * FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct mcp4018_data *data;
	struct iio_dev *indio_dev;

	if (!FUNC3(client->adapter,
				     I2C_FUNC_SMBUS_BYTE)) {
		FUNC0(dev, "SMBUS Byte transfers not supported\n");
		return -EOPNOTSUPP;
	}

	indio_dev = FUNC1(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;
	data = FUNC6(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;

	data->cfg = FUNC7(dev);
	if (!data->cfg)
		data->cfg = &mcp4018_cfg[FUNC4(mcp4018_id, client)->driver_data];

	indio_dev->dev.parent = dev;
	indio_dev->info = &mcp4018_info;
	indio_dev->channels = &mcp4018_channel;
	indio_dev->num_channels = 1;
	indio_dev->name = client->name;

	return FUNC2(dev, indio_dev);
}