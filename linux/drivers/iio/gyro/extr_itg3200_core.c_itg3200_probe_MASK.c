#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct itg3200 {struct i2c_client* i2c; int /*<<< orphan*/  orientation; } ;
struct TYPE_6__ {TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {TYPE_2__* driver; } ;
struct i2c_client {scalar_t__ irq; TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,scalar_t__) ; 
 struct iio_dev* FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct itg3200* FUNC5 (struct iio_dev*) ; 
 int FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  itg3200_available_scan_masks ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  itg3200_channels ; 
 int /*<<< orphan*/  itg3200_info ; 
 int FUNC9 (struct iio_dev*) ; 
 int FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	int ret;
	struct itg3200 *st;
	struct iio_dev *indio_dev;

	FUNC1(&client->dev, "probe I2C dev with IRQ %i", client->irq);

	indio_dev = FUNC2(&client->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC5(indio_dev);

	ret = FUNC6(&client->dev, "mount-matrix",
				&st->orientation);
	if (ret)
		return ret;

	FUNC3(client, indio_dev);
	st->i2c = client;

	indio_dev->dev.parent = &client->dev;
	indio_dev->name = client->dev.driver->name;
	indio_dev->channels = itg3200_channels;
	indio_dev->num_channels = FUNC0(itg3200_channels);
	indio_dev->available_scan_masks = itg3200_available_scan_masks;
	indio_dev->info = &itg3200_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC7(indio_dev);
	if (ret)
		return ret;

	if (client->irq) {
		ret = FUNC10(indio_dev);
		if (ret)
			goto error_unconfigure_buffer;
	}

	ret = FUNC9(indio_dev);
	if (ret)
		goto error_remove_trigger;

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_remove_trigger;

	return 0;

error_remove_trigger:
	if (client->irq)
		FUNC11(indio_dev);
error_unconfigure_buffer:
	FUNC8(indio_dev);
	return ret;
}