#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {scalar_t__ driver_data; int /*<<< orphan*/  name; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad8801_state {int vrefh_mv; int vrefl_mv; int /*<<< orphan*/ * vrefh_reg; int /*<<< orphan*/ * vrefl_reg; struct spi_device* spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ ID_AD8803 ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ad8801_channels ; 
 int /*<<< orphan*/  ad8801_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct ad8801_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 struct spi_device_id* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct ad8801_state *state;
	const struct spi_device_id *id;
	int ret;

	indio_dev = FUNC4(&spi->dev, sizeof(*state));
	if (indio_dev == NULL)
		return -ENOMEM;

	state = FUNC7(indio_dev);
	state->spi = spi;
	id = FUNC11(spi);

	state->vrefh_reg = FUNC5(&spi->dev, "vrefh");
	if (FUNC1(state->vrefh_reg)) {
		FUNC3(&spi->dev, "Vrefh regulator not specified\n");
		return FUNC2(state->vrefh_reg);
	}

	ret = FUNC9(state->vrefh_reg);
	if (ret) {
		FUNC3(&spi->dev, "Failed to enable vrefh regulator: %d\n",
				ret);
		return ret;
	}

	ret = FUNC10(state->vrefh_reg);
	if (ret < 0) {
		FUNC3(&spi->dev, "Failed to read vrefh regulator: %d\n",
				ret);
		goto error_disable_vrefh_reg;
	}
	state->vrefh_mv = ret / 1000;

	if (id->driver_data == ID_AD8803) {
		state->vrefl_reg = FUNC5(&spi->dev, "vrefl");
		if (FUNC1(state->vrefl_reg)) {
			FUNC3(&spi->dev, "Vrefl regulator not specified\n");
			ret = FUNC2(state->vrefl_reg);
			goto error_disable_vrefh_reg;
		}

		ret = FUNC9(state->vrefl_reg);
		if (ret) {
			FUNC3(&spi->dev, "Failed to enable vrefl regulator: %d\n",
					ret);
			goto error_disable_vrefh_reg;
		}

		ret = FUNC10(state->vrefl_reg);
		if (ret < 0) {
			FUNC3(&spi->dev, "Failed to read vrefl regulator: %d\n",
					ret);
			goto error_disable_vrefl_reg;
		}
		state->vrefl_mv = ret / 1000;
	} else {
		state->vrefl_mv = 0;
		state->vrefl_reg = NULL;
	}

	FUNC12(spi, indio_dev);
	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &ad8801_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ad8801_channels;
	indio_dev->num_channels = FUNC0(ad8801_channels);
	indio_dev->name = id->name;

	ret = FUNC6(indio_dev);
	if (ret) {
		FUNC3(&spi->dev, "Failed to register iio device: %d\n",
				ret);
		goto error_disable_vrefl_reg;
	}

	return 0;

error_disable_vrefl_reg:
	if (state->vrefl_reg)
		FUNC8(state->vrefl_reg);
error_disable_vrefh_reg:
	FUNC8(state->vrefh_reg);
	return ret;
}