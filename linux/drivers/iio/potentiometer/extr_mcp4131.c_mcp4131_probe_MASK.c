#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct mcp4131_data {TYPE_3__* cfg; int /*<<< orphan*/  lock; struct spi_device* spi; } ;
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  wipers; } ;
struct TYPE_6__ {unsigned long driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*,int) ; 
 int FUNC2 (struct device*,struct iio_dev*) ; 
 struct mcp4131_data* FUNC3 (struct iio_dev*) ; 
 TYPE_3__* mcp4131_cfg ; 
 int /*<<< orphan*/  mcp4131_channels ; 
 int /*<<< orphan*/  mcp4131_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (struct device*) ; 
 TYPE_2__* FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	int err;
	struct device *dev = &spi->dev;
	unsigned long devid;
	struct mcp4131_data *data;
	struct iio_dev *indio_dev;

	indio_dev = FUNC1(dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	data = FUNC3(indio_dev);
	FUNC7(spi, indio_dev);
	data->spi = spi;
	data->cfg = FUNC5(&spi->dev);
	if (!data->cfg) {
		devid = FUNC6(spi)->driver_data;
		data->cfg = &mcp4131_cfg[devid];
	}

	FUNC4(&data->lock);

	indio_dev->dev.parent = dev;
	indio_dev->info = &mcp4131_info;
	indio_dev->channels = mcp4131_channels;
	indio_dev->num_channels = data->cfg->wipers;
	indio_dev->name = FUNC6(spi)->name;

	err = FUNC2(dev, indio_dev);
	if (err) {
		FUNC0(&spi->dev, "Unable to register %s\n", indio_dev->name);
		return err;
	}

	return 0;
}