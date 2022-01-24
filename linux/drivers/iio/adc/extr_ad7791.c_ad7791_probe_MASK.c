#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  of_node; struct ad7791_platform_data* platform_data; } ;
struct spi_device {TYPE_3__ dev; int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad7791_state {int /*<<< orphan*/  reg; TYPE_6__* info; int /*<<< orphan*/  sd; } ;
struct ad7791_platform_data {int dummy; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_8__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int AD7791_FLAG_HAS_FILTER ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__* ad7791_chip_infos ; 
 int /*<<< orphan*/  ad7791_info ; 
 int /*<<< orphan*/  ad7791_no_filter_info ; 
 int FUNC2 (struct ad7791_state*,struct ad7791_platform_data*) ; 
 int /*<<< orphan*/  ad7791_sigma_delta_info ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 struct iio_dev* FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct ad7791_state* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct ad7791_platform_data *pdata = spi->dev.platform_data;
	struct iio_dev *indio_dev;
	struct ad7791_state *st;
	int ret;

	if (!spi->irq) {
		FUNC6(&spi->dev, "Missing IRQ.\n");
		return -ENXIO;
	}

	indio_dev = FUNC7(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC10(indio_dev);

	st->reg = FUNC8(&spi->dev, "refin");
	if (FUNC0(st->reg))
		return FUNC1(st->reg);

	ret = FUNC12(st->reg);
	if (ret)
		return ret;

	st->info = &ad7791_chip_infos[FUNC13(spi)->driver_data];
	FUNC4(&st->sd, indio_dev, spi, &ad7791_sigma_delta_info);

	FUNC14(spi, indio_dev);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->name = FUNC13(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->info->channels;
	indio_dev->num_channels = st->info->num_channels;
	if (st->info->flags & AD7791_FLAG_HAS_FILTER)
		indio_dev->info = &ad7791_info;
	else
		indio_dev->info = &ad7791_no_filter_info;

	ret = FUNC5(indio_dev);
	if (ret)
		goto error_disable_reg;

	ret = FUNC2(st, pdata);
	if (ret)
		goto error_remove_trigger;

	ret = FUNC9(indio_dev);
	if (ret)
		goto error_remove_trigger;

	return 0;

error_remove_trigger:
	FUNC3(indio_dev);
error_disable_reg:
	FUNC11(st->reg);

	return ret;
}