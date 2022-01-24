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
struct tsys01_dev {int (* reset ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  client; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_2__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  TSYS01_RESET ; 
 int FUNC1 (struct device*,struct iio_dev*) ; 
 struct tsys01_dev* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tsys01_channels ; 
 int /*<<< orphan*/  tsys01_info ; 
 int FUNC5 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev, struct device *dev)
{
	int ret;
	struct tsys01_dev *dev_data = FUNC2(indio_dev);

	FUNC3(&dev_data->lock);

	indio_dev->info = &tsys01_info;
	indio_dev->name = dev->driver->name;
	indio_dev->dev.parent = dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = tsys01_channels;
	indio_dev->num_channels = FUNC0(tsys01_channels);

	ret = dev_data->reset(dev_data->client, TSYS01_RESET, 3000);
	if (ret)
		return ret;

	ret = FUNC5(indio_dev);
	if (ret)
		return ret;

	return FUNC1(dev, indio_dev);
}