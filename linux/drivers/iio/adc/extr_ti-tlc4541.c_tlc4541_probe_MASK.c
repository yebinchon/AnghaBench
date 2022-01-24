#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tlc4541_state {int /*<<< orphan*/  reg; TYPE_2__* scan_single_xfer; int /*<<< orphan*/  scan_single_msg; int /*<<< orphan*/ * rx_buf; struct spi_device* spi; } ;
struct tlc4541_chip_info {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_6__ {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int len; int delay_usecs; int /*<<< orphan*/ * rx_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct tlc4541_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,int /*<<< orphan*/ *,int) ; 
 struct tlc4541_chip_info* tlc4541_chip_info ; 
 int /*<<< orphan*/  tlc4541_info ; 
 int /*<<< orphan*/  tlc4541_trigger_handler ; 

__attribute__((used)) static int FUNC14(struct spi_device *spi)
{
	struct tlc4541_state *st;
	struct iio_dev *indio_dev;
	const struct tlc4541_chip_info *info;
	int ret;
	int8_t device_init = 0;

	indio_dev = FUNC2(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC5(indio_dev);

	FUNC12(spi, indio_dev);

	st->spi = spi;

	info = &tlc4541_chip_info[FUNC10(spi)->driver_data];

	indio_dev->name = FUNC10(spi)->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = info->channels;
	indio_dev->num_channels = info->num_channels;
	indio_dev->info = &tlc4541_info;

	/* perform reset */
	FUNC13(spi, &device_init, 1);

	/* Setup default message */
	st->scan_single_xfer[0].rx_buf = &st->rx_buf[0];
	st->scan_single_xfer[0].len = 3;
	st->scan_single_xfer[1].delay_usecs = 3;
	st->scan_single_xfer[2].rx_buf = &st->rx_buf[0];
	st->scan_single_xfer[2].len = 2;

	FUNC11(&st->scan_single_msg,
					st->scan_single_xfer, 3);

	st->reg = FUNC3(&spi->dev, "vref");
	if (FUNC0(st->reg))
		return FUNC1(st->reg);

	ret = FUNC9(st->reg);
	if (ret)
		return ret;

	ret = FUNC7(indio_dev, NULL,
			&tlc4541_trigger_handler, NULL);
	if (ret)
		goto error_disable_reg;

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_cleanup_buffer;

	return 0;

error_cleanup_buffer:
	FUNC6(indio_dev);
error_disable_reg:
	FUNC8(st->reg);

	return ret;
}