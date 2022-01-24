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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  channels; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad5360_state {TYPE_3__* vref_reg; TYPE_6__* chip_info; struct spi_device* spi; } ;
typedef  enum ad5360_type { ____Placeholder_ad5360_type } ad5360_type ;
struct TYPE_10__ {unsigned int num_vrefs; int /*<<< orphan*/  num_channels; } ;
struct TYPE_9__ {int /*<<< orphan*/  supply; } ;
struct TYPE_8__ {int driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int FUNC0 (struct iio_dev*) ; 
 TYPE_6__* ad5360_chip_info_tbl ; 
 int /*<<< orphan*/  ad5360_info ; 
 int /*<<< orphan*/ * ad5360_vref_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,TYPE_3__*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ad5360_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,TYPE_3__*) ; 
 int FUNC8 (unsigned int,TYPE_3__*) ; 
 TYPE_2__* FUNC9 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	enum ad5360_type type = FUNC9(spi)->driver_data;
	struct iio_dev *indio_dev;
	struct ad5360_state *st;
	unsigned int i;
	int ret;

	indio_dev = FUNC2(&spi->dev, sizeof(*st));
	if (indio_dev == NULL) {
		FUNC1(&spi->dev, "Failed to allocate iio device\n");
		return  -ENOMEM;
	}

	st = FUNC5(indio_dev);
	FUNC10(spi, indio_dev);

	st->chip_info = &ad5360_chip_info_tbl[type];
	st->spi = spi;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC9(spi)->name;
	indio_dev->info = &ad5360_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->num_channels = st->chip_info->num_channels;

	ret = FUNC0(indio_dev);
	if (ret) {
		FUNC1(&spi->dev, "Failed to allocate channel spec: %d\n", ret);
		return ret;
	}

	for (i = 0; i < st->chip_info->num_vrefs; ++i)
		st->vref_reg[i].supply = ad5360_vref_name[i];

	ret = FUNC3(&st->spi->dev, st->chip_info->num_vrefs,
		st->vref_reg);
	if (ret) {
		FUNC1(&spi->dev, "Failed to request vref regulators: %d\n", ret);
		goto error_free_channels;
	}

	ret = FUNC8(st->chip_info->num_vrefs, st->vref_reg);
	if (ret) {
		FUNC1(&spi->dev, "Failed to enable vref regulators: %d\n", ret);
		goto error_free_channels;
	}

	ret = FUNC4(indio_dev);
	if (ret) {
		FUNC1(&spi->dev, "Failed to register iio device: %d\n", ret);
		goto error_disable_reg;
	}

	return 0;

error_disable_reg:
	FUNC7(st->chip_info->num_vrefs, st->vref_reg);
error_free_channels:
	FUNC6(indio_dev->channels);

	return ret;
}