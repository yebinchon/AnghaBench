#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {struct ad5449_platform_data* platform_data; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_8__ {TYPE_4__* parent; } ;
struct iio_dev {unsigned int num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad5449_platform_data {unsigned int sdo_mode; scalar_t__ hardware_clear_to_midscale; } ;
struct ad5449 {int has_sdo; TYPE_2__* vref_reg; TYPE_7__* chip_info; struct spi_device* spi; } ;
struct TYPE_11__ {unsigned int num_channels; scalar_t__ has_ctrl; int /*<<< orphan*/  channels; } ;
struct TYPE_9__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5449_CMD_CTRL ; 
 unsigned int AD5449_CTRL_HCLR_TO_MIDSCALE ; 
 unsigned int AD5449_CTRL_SDO_OFFSET ; 
 unsigned int AD5449_SDO_DISABLED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 TYPE_7__* ad5449_chip_info ; 
 int /*<<< orphan*/  ad5449_info ; 
 int /*<<< orphan*/  FUNC0 (struct ad5449*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 struct iio_dev* FUNC2 (TYPE_4__*,int) ; 
 int FUNC3 (TYPE_4__*,unsigned int,TYPE_2__*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ad5449* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,TYPE_2__*) ; 
 int FUNC7 (unsigned int,TYPE_2__*) ; 
 struct spi_device_id* FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct ad5449_platform_data *pdata = spi->dev.platform_data;
	const struct spi_device_id *id = FUNC8(spi);
	struct iio_dev *indio_dev;
	struct ad5449 *st;
	unsigned int i;
	int ret;

	indio_dev = FUNC2(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC5(indio_dev);
	FUNC9(spi, indio_dev);

	st->chip_info = &ad5449_chip_info[id->driver_data];
	st->spi = spi;

	for (i = 0; i < st->chip_info->num_channels; ++i)
		st->vref_reg[i].supply = FUNC0(st, i);

	ret = FUNC3(&spi->dev, st->chip_info->num_channels,
				st->vref_reg);
	if (ret)
		return ret;

	ret = FUNC7(st->chip_info->num_channels, st->vref_reg);
	if (ret)
		return ret;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = id->name;
	indio_dev->info = &ad5449_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;

	if (st->chip_info->has_ctrl) {
		unsigned int ctrl = 0x00;
		if (pdata) {
			if (pdata->hardware_clear_to_midscale)
				ctrl |= AD5449_CTRL_HCLR_TO_MIDSCALE;
			ctrl |= pdata->sdo_mode << AD5449_CTRL_SDO_OFFSET;
			st->has_sdo = pdata->sdo_mode != AD5449_SDO_DISABLED;
		} else {
			st->has_sdo = true;
		}
		FUNC1(indio_dev, AD5449_CMD_CTRL, ctrl);
	}

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_disable_reg;

	return 0;

error_disable_reg:
	FUNC6(st->chip_info->num_channels, st->vref_reg);

	return ret;
}