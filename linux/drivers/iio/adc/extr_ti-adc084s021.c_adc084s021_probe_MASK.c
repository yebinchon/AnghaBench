#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_10__ {int len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct adc084s021 {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; TYPE_2__ spi_trans; int /*<<< orphan*/  message; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; struct spi_device* spi; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adc084s021_buffer_setup_ops ; 
 int /*<<< orphan*/  adc084s021_buffer_trigger_handler ; 
 int /*<<< orphan*/  adc084s021_channels ; 
 int /*<<< orphan*/  adc084s021_info ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 struct iio_dev* FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 (TYPE_4__*,struct iio_dev*) ; 
 int FUNC6 (TYPE_4__*,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 struct adc084s021* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC13(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct adc084s021 *adc;
	int ret;

	indio_dev = FUNC4(&spi->dev, sizeof(*adc));
	if (!indio_dev) {
		FUNC3(&spi->dev, "Failed to allocate IIO device\n");
		return -ENOMEM;
	}

	adc = FUNC8(indio_dev);
	adc->spi = spi;

	/* Connect the SPI device and the iio dev */
	FUNC12(spi, indio_dev);

	/* Initiate the Industrial I/O device */
	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->name = FUNC10(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->info = &adc084s021_info;
	indio_dev->channels = adc084s021_channels;
	indio_dev->num_channels = FUNC0(adc084s021_channels);

	/* Create SPI transfer for channel reads */
	adc->spi_trans.tx_buf = adc->tx_buf;
	adc->spi_trans.rx_buf = adc->rx_buf;
	adc->spi_trans.len = 4; /* Trash + single channel */
	FUNC11(&adc->message, &adc->spi_trans, 1);

	adc->reg = FUNC7(&spi->dev, "vref");
	if (FUNC1(adc->reg))
		return FUNC2(adc->reg);

	FUNC9(&adc->lock);

	/* Setup triggered buffer with pollfunction */
	ret = FUNC6(&spi->dev, indio_dev, NULL,
					    adc084s021_buffer_trigger_handler,
					    &adc084s021_buffer_setup_ops);
	if (ret) {
		FUNC3(&spi->dev, "Failed to setup triggered buffer\n");
		return ret;
	}

	return FUNC5(&spi->dev, indio_dev);
}