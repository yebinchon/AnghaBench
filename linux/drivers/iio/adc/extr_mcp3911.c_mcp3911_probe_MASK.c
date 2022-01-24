#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct mcp3911 {int /*<<< orphan*/ * vref; int /*<<< orphan*/ * clki; int /*<<< orphan*/  lock; struct spi_device* spi; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,char*) ; 
 int FUNC9 (struct iio_dev*) ; 
 struct mcp3911* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  mcp3911_channels ; 
 int FUNC11 (struct mcp3911*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcp3911_info ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC17(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct mcp3911 *adc;
	int ret;

	indio_dev = FUNC7(&spi->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC10(indio_dev);
	adc->spi = spi;

	adc->vref = FUNC8(&adc->spi->dev, "vref");
	if (FUNC1(adc->vref)) {
		if (FUNC2(adc->vref) == -ENODEV) {
			adc->vref = NULL;
		} else {
			FUNC5(&adc->spi->dev,
				"failed to get regulator (%ld)\n",
				FUNC2(adc->vref));
			return FUNC2(adc->vref);
		}

	} else {
		ret = FUNC14(adc->vref);
		if (ret)
			return ret;
	}

	adc->clki = FUNC6(&adc->spi->dev, NULL);
	if (FUNC1(adc->clki)) {
		if (FUNC2(adc->clki) == -ENOENT) {
			adc->clki = NULL;
		} else {
			FUNC5(&adc->spi->dev,
				"failed to get adc clk (%ld)\n",
				FUNC2(adc->clki));
			ret = FUNC2(adc->clki);
			goto reg_disable;
		}
	} else {
		ret = FUNC4(adc->clki);
		if (ret < 0) {
			FUNC5(&adc->spi->dev,
				"Failed to enable clki: %d\n", ret);
			goto reg_disable;
		}
	}

	ret = FUNC11(adc, spi->dev.of_node);
	if (ret)
		goto clk_disable;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->name = FUNC15(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &mcp3911_info;
	FUNC16(spi, indio_dev);

	indio_dev->channels = mcp3911_channels;
	indio_dev->num_channels = FUNC0(mcp3911_channels);

	FUNC12(&adc->lock);

	ret = FUNC9(indio_dev);
	if (ret)
		goto clk_disable;

	return ret;

clk_disable:
	FUNC3(adc->clki);
reg_disable:
	if (adc->vref)
		FUNC13(adc->vref);

	return ret;
}