#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad5764_state {TYPE_3__* vref_reg; TYPE_6__* chip_info; struct spi_device* spi; } ;
typedef  enum ad5764_type { ____Placeholder_ad5764_type } ad5764_type ;
struct TYPE_11__ {scalar_t__ int_vref; int /*<<< orphan*/  channels; } ;
struct TYPE_10__ {char* supply; } ;
struct TYPE_9__ {int driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5764_NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 TYPE_6__* ad5764_chip_infos ; 
 int /*<<< orphan*/  ad5764_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ad5764_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	enum ad5764_type type = FUNC8(spi)->driver_data;
	struct iio_dev *indio_dev;
	struct ad5764_state *st;
	int ret;

	indio_dev = FUNC2(&spi->dev, sizeof(*st));
	if (indio_dev == NULL) {
		FUNC1(&spi->dev, "Failed to allocate iio device\n");
		return -ENOMEM;
	}

	st = FUNC5(indio_dev);
	FUNC9(spi, indio_dev);

	st->spi = spi;
	st->chip_info = &ad5764_chip_infos[type];

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC8(spi)->name;
	indio_dev->info = &ad5764_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->num_channels = AD5764_NUM_CHANNELS;
	indio_dev->channels = st->chip_info->channels;

	if (st->chip_info->int_vref == 0) {
		st->vref_reg[0].supply = "vrefAB";
		st->vref_reg[1].supply = "vrefCD";

		ret = FUNC3(&st->spi->dev,
			FUNC0(st->vref_reg), st->vref_reg);
		if (ret) {
			FUNC1(&spi->dev, "Failed to request vref regulators: %d\n",
				ret);
			return ret;
		}

		ret = FUNC7(FUNC0(st->vref_reg),
			st->vref_reg);
		if (ret) {
			FUNC1(&spi->dev, "Failed to enable vref regulators: %d\n",
				ret);
			return ret;
		}
	}

	ret = FUNC4(indio_dev);
	if (ret) {
		FUNC1(&spi->dev, "Failed to register iio device: %d\n", ret);
		goto error_disable_reg;
	}

	return 0;

error_disable_reg:
	if (st->chip_info->int_vref == 0)
		FUNC6(FUNC0(st->vref_reg), st->vref_reg);
	return ret;
}