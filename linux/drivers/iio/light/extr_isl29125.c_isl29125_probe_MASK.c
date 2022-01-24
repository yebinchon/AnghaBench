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
struct isl29125_data {int conf1; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ISL29125_CONF1 ; 
 int /*<<< orphan*/  ISL29125_DEVICE_ID ; 
 int /*<<< orphan*/  ISL29125_DRV_NAME ; 
 int ISL29125_ID ; 
 int ISL29125_MODE_PD ; 
 int ISL29125_MODE_RANGE ; 
 int /*<<< orphan*/  ISL29125_STATUS ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct isl29125_data* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isl29125_buffer_setup_ops ; 
 int /*<<< orphan*/  isl29125_channels ; 
 int /*<<< orphan*/  isl29125_info ; 
 int /*<<< orphan*/  isl29125_trigger_handler ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct isl29125_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC1(&client->dev, sizeof(*data));
	if (indio_dev == NULL)
		return -ENOMEM;

	data = FUNC6(indio_dev);
	FUNC2(client, indio_dev);
	data->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &isl29125_info;
	indio_dev->name = ISL29125_DRV_NAME;
	indio_dev->channels = isl29125_channels;
	indio_dev->num_channels = FUNC0(isl29125_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC3(data->client, ISL29125_DEVICE_ID);
	if (ret < 0)
		return ret;
	if (ret != ISL29125_ID)
		return -ENODEV;

	data->conf1 = ISL29125_MODE_PD | ISL29125_MODE_RANGE;
	ret = FUNC4(data->client, ISL29125_CONF1,
		data->conf1);
	if (ret < 0)
		return ret;

	ret = FUNC4(data->client, ISL29125_STATUS, 0);
	if (ret < 0)
		return ret;

	ret = FUNC8(indio_dev, NULL,
		isl29125_trigger_handler, &isl29125_buffer_setup_ops);
	if (ret < 0)
		return ret;

	ret = FUNC5(indio_dev);
	if (ret < 0)
		goto buffer_cleanup;

	return 0;

buffer_cleanup:
	FUNC7(indio_dev);
	return ret;
}