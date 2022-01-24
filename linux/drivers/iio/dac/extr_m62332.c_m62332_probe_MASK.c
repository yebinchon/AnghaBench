#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct m62332_data {int /*<<< orphan*/  vcc; int /*<<< orphan*/  mutex; struct i2c_client* client; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 struct m62332_data* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  m62332_channels ; 
 int /*<<< orphan*/  m62332_info ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct m62332_data *data;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC9(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;

	FUNC10(&data->mutex);

	data->vcc = FUNC4(&client->dev, "VCC");
	if (FUNC1(data->vcc))
		return FUNC2(data->vcc);

	/* establish that the iio_dev is a child of the i2c device */
	indio_dev->dev.parent = &client->dev;

	indio_dev->num_channels = FUNC0(m62332_channels);
	indio_dev->channels = m62332_channels;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &m62332_info;

	ret = FUNC7(indio_dev, client->dev.platform_data);
	if (ret < 0)
		return ret;

	ret = FUNC6(indio_dev);
	if (ret < 0)
		goto err;

	return 0;

err:
	FUNC8(indio_dev);

	return ret;
}