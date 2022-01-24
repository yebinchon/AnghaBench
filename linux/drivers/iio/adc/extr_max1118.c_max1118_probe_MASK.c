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
struct max1118 {int /*<<< orphan*/  reg; int /*<<< orphan*/  lock; struct spi_device* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct max1118* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ max1118 ; 
 int /*<<< orphan*/  max1118_channels ; 
 int /*<<< orphan*/  max1118_info ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max1118_trigger_handler ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct spi_device_id* FUNC14 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct max1118 *adc;
	const struct spi_device_id *id = FUNC14(spi);
	int ret;

	indio_dev = FUNC4(&spi->dev, sizeof(*adc));
	if (!indio_dev)
		return -ENOMEM;

	adc = FUNC7(indio_dev);
	adc->spi = spi;
	FUNC11(&adc->lock);

	if (id->driver_data == max1118) {
		adc->reg = FUNC5(&spi->dev, "vref");
		if (FUNC1(adc->reg)) {
			FUNC3(&spi->dev, "failed to get vref regulator\n");
			return FUNC2(adc->reg);
		}
		ret = FUNC13(adc->reg);
		if (ret)
			return ret;
	}

	FUNC15(spi, indio_dev);

	indio_dev->name = FUNC14(spi)->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &max1118_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = max1118_channels;
	indio_dev->num_channels = FUNC0(max1118_channels);

	/*
	 * To reinitiate a conversion on CH0, it is necessary to allow for a
	 * conversion to be complete and all of the data to be read out.  Once
	 * a conversion has been completed, the MAX1117/MAX1118/MAX1119 will go
	 * into AutoShutdown mode until the next conversion is initiated.
	 */
	FUNC10(spi, 0);

	ret = FUNC9(indio_dev, NULL,
					max1118_trigger_handler, NULL);
	if (ret)
		goto err_reg_disable;

	ret = FUNC6(indio_dev);
	if (ret)
		goto err_buffer_cleanup;

	return 0;

err_buffer_cleanup:
	FUNC8(indio_dev);
err_reg_disable:
	if (id->driver_data == max1118)
		FUNC12(adc->reg);

	return ret;
}