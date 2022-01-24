#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct max11100_state {int /*<<< orphan*/  vref_reg; struct spi_device* spi; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; TYPE_2__* parent; } ;
struct iio_dev {char* name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct max11100_state* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  max11100_channels ; 
 int /*<<< orphan*/  max11100_info ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	int ret;
	struct iio_dev *indio_dev;
	struct max11100_state *state;

	indio_dev = FUNC3(&spi->dev, sizeof(*state));
	if (!indio_dev)
		return -ENOMEM;

	FUNC9(spi, indio_dev);

	state = FUNC6(indio_dev);
	state->spi = spi;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->name = "max11100";
	indio_dev->info = &max11100_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = max11100_channels;
	indio_dev->num_channels = FUNC0(max11100_channels);

	state->vref_reg = FUNC4(&spi->dev, "vref");
	if (FUNC1(state->vref_reg))
		return FUNC2(state->vref_reg);

	ret = FUNC8(state->vref_reg);
	if (ret)
		return ret;

	ret = FUNC5(indio_dev);
	if (ret)
		goto disable_regulator;

	return 0;

disable_regulator:
	FUNC7(state->vref_reg);

	return ret;
}