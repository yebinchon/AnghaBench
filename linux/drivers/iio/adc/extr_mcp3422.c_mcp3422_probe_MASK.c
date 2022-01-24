#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mcp3422 {int id; int /*<<< orphan*/  lock; struct i2c_client* i2c; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {void* num_channels; void* channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MCP3422_CONT_SAMPLING ; 
 int /*<<< orphan*/  MCP3422_PGA_1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCP3422_SRATE_240 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct iio_dev* FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct iio_dev*) ; 
 struct mcp3422* FUNC9 (struct iio_dev*) ; 
 void* mcp3421_channels ; 
 void* mcp3422_channels ; 
 int /*<<< orphan*/  mcp3422_info ; 
 int FUNC10 (struct mcp3422*,int) ; 
 void* mcp3424_channels ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct mcp3422 *adc;
	int err;
	u8 config;

	if (!FUNC7(client->adapter, I2C_FUNC_I2C))
		return -EOPNOTSUPP;

	indio_dev = FUNC5(&client->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC9(indio_dev);
	adc->i2c = client;
	adc->id = (u8)(id->driver_data);

	FUNC11(&adc->lock);

	indio_dev->dev.parent = &client->dev;
	indio_dev->dev.of_node = client->dev.of_node;
	indio_dev->name = FUNC4(&client->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mcp3422_info;

	switch (adc->id) {
	case 1:
	case 5:
		indio_dev->channels = mcp3421_channels;
		indio_dev->num_channels = FUNC0(mcp3421_channels);
		break;
	case 2:
	case 3:
	case 6:
	case 7:
		indio_dev->channels = mcp3422_channels;
		indio_dev->num_channels = FUNC0(mcp3422_channels);
		break;
	case 4:
	case 8:
		indio_dev->channels = mcp3424_channels;
		indio_dev->num_channels = FUNC0(mcp3424_channels);
		break;
	}

	/* meaningful default configuration */
	config = (MCP3422_CONT_SAMPLING
		| FUNC1(0)
		| FUNC2(MCP3422_PGA_1)
		| FUNC3(MCP3422_SRATE_240));
	err = FUNC10(adc, config);
	if (err < 0)
		return err;

	err = FUNC6(&client->dev, indio_dev);
	if (err < 0)
		return err;

	FUNC8(client, indio_dev);

	return 0;
}