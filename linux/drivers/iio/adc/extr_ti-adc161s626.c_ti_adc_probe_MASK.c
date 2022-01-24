#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ti_adc_data {int shift; int read_size; int /*<<< orphan*/  ref; struct spi_device* spi; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; TYPE_3__* parent; } ;
struct iio_dev {void* num_channels; void* channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * info; } ;
struct TYPE_6__ {int driver_data; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TI_ADC141S626 129 
#define  TI_ADC161S626 128 
 int /*<<< orphan*/  TI_ADC_DRV_NAME ; 
 struct iio_dev* FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ti_adc_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct iio_dev*) ; 
 void* ti_adc141s626_channels ; 
 void* ti_adc161s626_channels ; 
 int /*<<< orphan*/  ti_adc_info ; 
 int /*<<< orphan*/  ti_adc_trigger_handler ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct ti_adc_data *data;
	int ret;

	indio_dev = FUNC2(&spi->dev, sizeof(*data));
	if (!indio_dev)
		return -ENOMEM;

	indio_dev->info = &ti_adc_info;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->name = TI_ADC_DRV_NAME;
	indio_dev->modes = INDIO_DIRECT_MODE;
	FUNC11(spi, indio_dev);

	data = FUNC5(indio_dev);
	data->spi = spi;

	switch (FUNC10(spi)->driver_data) {
	case TI_ADC141S626:
		indio_dev->channels = ti_adc141s626_channels;
		indio_dev->num_channels = FUNC0(ti_adc141s626_channels);
		data->shift = 0;
		data->read_size = 2;
		break;
	case TI_ADC161S626:
		indio_dev->channels = ti_adc161s626_channels;
		indio_dev->num_channels = FUNC0(ti_adc161s626_channels);
		data->shift = 6;
		data->read_size = 3;
		break;
	}

	data->ref = FUNC3(&spi->dev, "vdda");
	if (!FUNC1(data->ref)) {
		ret = FUNC9(data->ref);
		if (ret < 0)
			return ret;
	}

	ret = FUNC7(indio_dev, NULL,
					 ti_adc_trigger_handler, NULL);
	if (ret)
		goto error_regulator_disable;

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_unreg_buffer;

	return 0;

error_unreg_buffer:
	FUNC6(indio_dev);

error_regulator_disable:
	FUNC8(data->ref);

	return ret;
}