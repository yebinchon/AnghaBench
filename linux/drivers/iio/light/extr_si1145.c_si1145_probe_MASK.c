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
typedef  int u8 ;
struct si1145_data {int /*<<< orphan*/  cmdlock; int /*<<< orphan*/  lock; TYPE_2__* part_info; struct i2c_client* client; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct TYPE_4__ {int part; int /*<<< orphan*/  iio_info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  SI1145_REG_PART_ID ; 
 int /*<<< orphan*/  SI1145_REG_REV_ID ; 
 int /*<<< orphan*/  SI1145_REG_SEQ_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct si1145_data* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  si1145_buffer_setup_ops ; 
 int FUNC9 (struct si1145_data*) ; 
 TYPE_2__* si1145_part_info ; 
 int FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  si1145_trigger_handler ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct si1145_data *data;
	struct iio_dev *indio_dev;
	u8 part_id, rev_id, seq_id;
	int ret;

	indio_dev = FUNC2(&client->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC7(indio_dev);
	FUNC5(client, indio_dev);
	data->client = client;
	data->part_info = &si1145_part_info[id->driver_data];

	part_id = ret = FUNC6(data->client,
						 SI1145_REG_PART_ID);
	if (ret < 0)
		return ret;
	rev_id = ret = FUNC6(data->client,
						SI1145_REG_REV_ID);
	if (ret < 0)
		return ret;
	seq_id = ret = FUNC6(data->client,
						SI1145_REG_SEQ_ID);
	if (ret < 0)
		return ret;
	FUNC1(&client->dev, "device ID part %#02hhx rev %#02hhx seq %#02hhx\n",
			part_id, rev_id, seq_id);
	if (part_id != data->part_info->part) {
		FUNC0(&client->dev, "part ID mismatch got %#02hhx, expected %#02x\n",
				part_id, data->part_info->part);
		return -ENODEV;
	}

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = id->name;
	indio_dev->channels = data->part_info->channels;
	indio_dev->num_channels = data->part_info->num_channels;
	indio_dev->info = data->part_info->iio_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	FUNC8(&data->lock);
	FUNC8(&data->cmdlock);

	ret = FUNC9(data);
	if (ret < 0)
		return ret;

	ret = FUNC4(&client->dev,
		indio_dev, NULL,
		si1145_trigger_handler, &si1145_buffer_setup_ops);
	if (ret < 0)
		return ret;

	if (client->irq) {
		ret = FUNC10(indio_dev);
		if (ret < 0)
			return ret;
	} else {
		FUNC1(&client->dev, "no irq, using polling\n");
	}

	return FUNC3(&client->dev, indio_dev);
}