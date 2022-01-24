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
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct abp_state {int mreq_len; int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_QUICK ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  abp060mg_channels ; 
 int /*<<< orphan*/  abp060mg_info ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct abp_state*) ; 
 struct abp_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct abp_state *state;
	unsigned long cfg_id = id->driver_data;

	indio_dev = FUNC3(&client->dev, sizeof(*state));
	if (!indio_dev)
		return -ENOMEM;

	state = FUNC7(indio_dev);
	FUNC6(client, state);
	state->client = client;

	if (!FUNC5(client->adapter, I2C_FUNC_SMBUS_QUICK))
		state->mreq_len = 1;

	FUNC1(indio_dev, cfg_id);

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = FUNC2(&client->dev);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &abp060mg_info;

	indio_dev->channels = abp060mg_channels;
	indio_dev->num_channels = FUNC0(abp060mg_channels);

	FUNC8(&state->lock);

	return FUNC4(&client->dev, indio_dev);
}