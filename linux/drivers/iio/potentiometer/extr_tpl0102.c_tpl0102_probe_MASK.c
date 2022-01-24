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
struct tpl0102_data {TYPE_2__* cfg; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  wipers; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct iio_dev* FUNC3 (struct device*,int) ; 
 int FUNC4 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct iio_dev*) ; 
 struct tpl0102_data* FUNC7 (struct iio_dev*) ; 
 TYPE_2__* tpl0102_cfg ; 
 int /*<<< orphan*/  tpl0102_channels ; 
 int /*<<< orphan*/  tpl0102_info ; 
 int /*<<< orphan*/  tpl0102_regmap_config ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct tpl0102_data *data;
	struct iio_dev *indio_dev;

	indio_dev = FUNC3(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;
	data = FUNC7(indio_dev);
	FUNC6(client, indio_dev);

	data->cfg = &tpl0102_cfg[id->driver_data];
	data->regmap = FUNC5(client, &tpl0102_regmap_config);
	if (FUNC0(data->regmap)) {
		FUNC2(dev, "regmap initialization failed\n");
		return FUNC1(data->regmap);
	}

	indio_dev->dev.parent = dev;
	indio_dev->info = &tpl0102_info;
	indio_dev->channels = tpl0102_channels;
	indio_dev->num_channels = data->cfg->wipers;
	indio_dev->name = client->name;

	return FUNC4(dev, indio_dev);
}