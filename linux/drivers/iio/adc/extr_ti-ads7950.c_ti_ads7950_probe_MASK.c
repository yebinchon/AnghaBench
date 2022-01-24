#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int base; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  owner; int /*<<< orphan*/ * parent; int /*<<< orphan*/  label; } ;
struct TYPE_8__ {int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct ti_ads7950_state {int /*<<< orphan*/  slock; int /*<<< orphan*/  reg; TYPE_5__ chip; struct spi_device* spi; int /*<<< orphan*/  vref_mv; TYPE_2__* scan_single_xfer; int /*<<< orphan*/  scan_single_msg; int /*<<< orphan*/  single_rx; int /*<<< orphan*/  single_tx; int /*<<< orphan*/  ring_msg; TYPE_3__ ring_xfer; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct ti_ads7950_chip_info {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_CS_WORD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  TI_ADS7950_NUM_GPIOS ; 
 int /*<<< orphan*/  TI_ADS7950_VA_MV_ACPI_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (TYPE_5__*,struct ti_ads7950_state*) ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 
 struct ti_ads7950_state* FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_dev*) ; 
 int FUNC12 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC17 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct spi_device*,struct iio_dev*) ; 
 int FUNC22 (struct spi_device*) ; 
 struct ti_ads7950_chip_info* ti_ads7950_chip_info ; 
 int /*<<< orphan*/  ti_ads7950_direction_input ; 
 int /*<<< orphan*/  ti_ads7950_direction_output ; 
 int /*<<< orphan*/  ti_ads7950_get ; 
 int /*<<< orphan*/  ti_ads7950_get_direction ; 
 int /*<<< orphan*/  ti_ads7950_info ; 
 int FUNC23 (struct ti_ads7950_state*) ; 
 int /*<<< orphan*/  ti_ads7950_set ; 
 int /*<<< orphan*/  ti_ads7950_trigger_handler ; 

__attribute__((used)) static int FUNC24(struct spi_device *spi)
{
	struct ti_ads7950_state *st;
	struct iio_dev *indio_dev;
	const struct ti_ads7950_chip_info *info;
	int ret;

	spi->bits_per_word = 16;
	spi->mode |= SPI_CS_WORD;
	ret = FUNC22(spi);
	if (ret < 0) {
		FUNC3(&spi->dev, "Error in spi setup\n");
		return ret;
	}

	indio_dev = FUNC5(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC10(indio_dev);

	FUNC21(spi, indio_dev);

	st->spi = spi;

	info = &ti_ads7950_chip_info[FUNC17(spi)->driver_data];

	indio_dev->name = FUNC17(spi)->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = info->channels;
	indio_dev->num_channels = info->num_channels;
	indio_dev->info = &ti_ads7950_info;

	/* build spi ring message */
	FUNC19(&st->ring_msg);

	st->ring_xfer.tx_buf = &st->tx_buf[0];
	st->ring_xfer.rx_buf = &st->rx_buf[0];
	/* len will be set later */
	st->ring_xfer.cs_change = true;

	FUNC18(&st->ring_xfer, &st->ring_msg);

	/*
	 * Setup default message. The sample is read at the end of the first
	 * transfer, then it takes one full cycle to convert the sample and one
	 * more cycle to send the value. The conversion process is driven by
	 * the SPI clock, which is why we have 3 transfers. The middle one is
	 * just dummy data sent while the chip is converting the sample that
	 * was read at the end of the first transfer.
	 */

	st->scan_single_xfer[0].tx_buf = &st->single_tx;
	st->scan_single_xfer[0].len = 2;
	st->scan_single_xfer[0].cs_change = 1;
	st->scan_single_xfer[1].tx_buf = &st->single_tx;
	st->scan_single_xfer[1].len = 2;
	st->scan_single_xfer[1].cs_change = 1;
	st->scan_single_xfer[2].rx_buf = &st->single_rx;
	st->scan_single_xfer[2].len = 2;

	FUNC20(&st->scan_single_msg,
					st->scan_single_xfer, 3);

	/* Use hard coded value for reference voltage in ACPI case */
	if (FUNC0(&spi->dev))
		st->vref_mv = TI_ADS7950_VA_MV_ACPI_DEFAULT;

	FUNC14(&st->slock);

	st->reg = FUNC6(&spi->dev, "vref");
	if (FUNC1(st->reg)) {
		FUNC3(&spi->dev, "Failed get get regulator \"vref\"\n");
		ret = FUNC2(st->reg);
		goto error_destroy_mutex;
	}

	ret = FUNC16(st->reg);
	if (ret) {
		FUNC3(&spi->dev, "Failed to enable regulator \"vref\"\n");
		goto error_destroy_mutex;
	}

	ret = FUNC12(indio_dev, NULL,
					 &ti_ads7950_trigger_handler, NULL);
	if (ret) {
		FUNC3(&spi->dev, "Failed to setup triggered buffer\n");
		goto error_disable_reg;
	}

	ret = FUNC23(st);
	if (ret) {
		FUNC3(&spi->dev, "Failed to init adc chip\n");
		goto error_cleanup_ring;
	}

	ret = FUNC8(indio_dev);
	if (ret) {
		FUNC3(&spi->dev, "Failed to register iio device\n");
		goto error_cleanup_ring;
	}

	/* Add GPIO chip */
	st->chip.label = FUNC4(&st->spi->dev);
	st->chip.parent = &st->spi->dev;
	st->chip.owner = THIS_MODULE;
	st->chip.base = -1;
	st->chip.ngpio = TI_ADS7950_NUM_GPIOS;
	st->chip.get_direction = ti_ads7950_get_direction;
	st->chip.direction_input = ti_ads7950_direction_input;
	st->chip.direction_output = ti_ads7950_direction_output;
	st->chip.get = ti_ads7950_get;
	st->chip.set = ti_ads7950_set;

	ret = FUNC7(&st->chip, st);
	if (ret) {
		FUNC3(&spi->dev, "Failed to init GPIOs\n");
		goto error_iio_device;
	}

	return 0;

error_iio_device:
	FUNC9(indio_dev);
error_cleanup_ring:
	FUNC11(indio_dev);
error_disable_reg:
	FUNC15(st->reg);
error_destroy_mutex:
	FUNC13(&st->slock);

	return ret;
}