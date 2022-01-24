#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct ad7124_state {int /*<<< orphan*/ * vref; int /*<<< orphan*/  mclk; int /*<<< orphan*/  sd; int /*<<< orphan*/ * chip_info; } ;

/* Variables and functions */
 int AD7124_INT_REF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ad7124_chip_info_tbl ; 
 int /*<<< orphan*/  ad7124_info ; 
 int FUNC4 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ad7124_ref_names ; 
 int FUNC5 (struct ad7124_state*) ; 
 int /*<<< orphan*/  ad7124_sigma_delta_info ; 
 int FUNC6 (struct ad7124_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 struct iio_dev* FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct iio_dev*) ; 
 struct ad7124_state* FUNC17 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 struct spi_device_id* FUNC20 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC22(struct spi_device *spi)
{
	const struct spi_device_id *id;
	struct ad7124_state *st;
	struct iio_dev *indio_dev;
	int i, ret;

	indio_dev = FUNC14(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC17(indio_dev);

	id = FUNC20(spi);
	st->chip_info = &ad7124_chip_info_tbl[id->driver_data];

	FUNC8(&st->sd, indio_dev, spi, &ad7124_sigma_delta_info);

	FUNC21(spi, indio_dev);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC20(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &ad7124_info;

	ret = FUNC4(indio_dev, spi->dev.of_node);
	if (ret < 0)
		return ret;

	for (i = 0; i < FUNC0(st->vref); i++) {
		if (i == AD7124_INT_REF)
			continue;

		st->vref[i] = FUNC15(&spi->dev,
						ad7124_ref_names[i]);
		if (FUNC3(st->vref[i]) == -ENODEV)
			continue;
		else if (FUNC1(st->vref[i]))
			return FUNC3(st->vref[i]);

		ret = FUNC19(st->vref[i]);
		if (ret)
			return ret;
	}

	st->mclk = FUNC13(&spi->dev, "mclk");
	if (FUNC1(st->mclk)) {
		ret = FUNC3(st->mclk);
		goto error_regulator_disable;
	}

	ret = FUNC11(st->mclk);
	if (ret < 0)
		goto error_regulator_disable;

	ret = FUNC6(st);
	if (ret < 0)
		goto error_clk_disable_unprepare;

	ret = FUNC5(st);
	if (ret < 0)
		goto error_clk_disable_unprepare;

	ret = FUNC9(indio_dev);
	if (ret < 0)
		goto error_clk_disable_unprepare;

	ret = FUNC16(indio_dev);
	if (ret < 0) {
		FUNC12(&spi->dev, "Failed to register iio device\n");
		goto error_remove_trigger;
	}

	return 0;

error_remove_trigger:
	FUNC7(indio_dev);
error_clk_disable_unprepare:
	FUNC10(st->mclk);
error_regulator_disable:
	for (i = FUNC0(st->vref) - 1; i >= 0; i--) {
		if (!FUNC2(st->vref[i]))
			FUNC18(st->vref[i]);
	}

	return ret;
}