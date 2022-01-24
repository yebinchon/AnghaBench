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
struct spi_device_id {size_t driver_data; int /*<<< orphan*/  name; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct mcp4922_state {int vref_mv; int /*<<< orphan*/  vref_reg; struct spi_device* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCP4922_NUM_CHANNELS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct mcp4922_state* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/ * mcp4922_channels ; 
 int /*<<< orphan*/  mcp4922_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct spi_device_id* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct mcp4922_state *state;
	const struct spi_device_id *id;
	int ret;

	indio_dev = FUNC3(&spi->dev, sizeof(*state));
	if (indio_dev == NULL)
		return -ENOMEM;

	state = FUNC6(indio_dev);
	state->spi = spi;
	state->vref_reg = FUNC4(&spi->dev, "vref");
	if (FUNC0(state->vref_reg)) {
		FUNC2(&spi->dev, "Vref regulator not specified\n");
		return FUNC1(state->vref_reg);
	}

	ret = FUNC8(state->vref_reg);
	if (ret) {
		FUNC2(&spi->dev, "Failed to enable vref regulator: %d\n",
				ret);
		return ret;
	}

	ret = FUNC9(state->vref_reg);
	if (ret < 0) {
		FUNC2(&spi->dev, "Failed to read vref regulator: %d\n",
				ret);
		goto error_disable_reg;
	}
	state->vref_mv = ret / 1000;

	FUNC11(spi, indio_dev);
	id = FUNC10(spi);
	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &mcp4922_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = mcp4922_channels[id->driver_data];
	indio_dev->num_channels = MCP4922_NUM_CHANNELS;
	indio_dev->name = id->name;

	ret = FUNC5(indio_dev);
	if (ret) {
		FUNC2(&spi->dev, "Failed to register iio device: %d\n",
				ret);
		goto error_disable_reg;
	}

	return 0;

error_disable_reg:
	FUNC7(state->vref_reg);

	return ret;
}