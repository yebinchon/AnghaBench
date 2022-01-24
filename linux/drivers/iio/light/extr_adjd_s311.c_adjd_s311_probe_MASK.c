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
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adjd_s311_data {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJD_S311_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  adjd_s311_channels ; 
 int /*<<< orphan*/  adjd_s311_info ; 
 int /*<<< orphan*/  adjd_s311_trigger_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct adjd_s311_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct adjd_s311_data *data;
	struct iio_dev *indio_dev;
	int err;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (indio_dev == NULL)
		return -ENOMEM;

	data = FUNC5(indio_dev);
	FUNC3(client, indio_dev);
	data->client = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &adjd_s311_info;
	indio_dev->name = ADJD_S311_DRV_NAME;
	indio_dev->channels = adjd_s311_channels;
	indio_dev->num_channels = FUNC0(adjd_s311_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	err = FUNC7(indio_dev, NULL,
		adjd_s311_trigger_handler, NULL);
	if (err < 0)
		return err;

	err = FUNC4(indio_dev);
	if (err)
		goto exit_unreg_buffer;

	FUNC1(&client->dev, "ADJD-S311 color sensor registered\n");

	return 0;

exit_unreg_buffer:
	FUNC6(indio_dev);
	return err;
}