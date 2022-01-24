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
struct lv0104cs_private {size_t calibscale; struct i2c_client* client; int /*<<< orphan*/  int_time; int /*<<< orphan*/  scale; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; int /*<<< orphan*/  modes; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  regval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 size_t LV0104CS_CALIBSCALE_UNITY ; 
 int /*<<< orphan*/  LV0104CS_INTEG_200MS ; 
 int /*<<< orphan*/  LV0104CS_SCALE_1X ; 
 struct iio_dev* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct lv0104cs_private*) ; 
 struct lv0104cs_private* FUNC4 (struct iio_dev*) ; 
 TYPE_2__* lv0104cs_calibscales ; 
 int /*<<< orphan*/  lv0104cs_channels ; 
 int /*<<< orphan*/  lv0104cs_info ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct iio_dev *indio_dev;
	struct lv0104cs_private *lv0104cs;
	int ret;

	indio_dev = FUNC1(&client->dev, sizeof(*lv0104cs));
	if (!indio_dev)
		return -ENOMEM;

	lv0104cs = FUNC4(indio_dev);

	FUNC3(client, lv0104cs);
	lv0104cs->client = client;

	FUNC6(&lv0104cs->lock);

	lv0104cs->calibscale = LV0104CS_CALIBSCALE_UNITY;
	lv0104cs->scale = LV0104CS_SCALE_1X;
	lv0104cs->int_time = LV0104CS_INTEG_200MS;

	ret = FUNC5(lv0104cs->client,
			lv0104cs_calibscales[LV0104CS_CALIBSCALE_UNITY].regval);
	if (ret)
		return ret;

	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = lv0104cs_channels;
	indio_dev->num_channels = FUNC0(lv0104cs_channels);
	indio_dev->name = client->name;
	indio_dev->info = &lv0104cs_info;

	return FUNC2(&client->dev, indio_dev);
}