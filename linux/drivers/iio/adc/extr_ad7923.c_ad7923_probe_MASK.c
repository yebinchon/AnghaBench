#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; TYPE_4__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct ad7923_state {int settings; int /*<<< orphan*/  reg; int /*<<< orphan*/  scan_single_msg; TYPE_2__* scan_single_xfer; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; struct spi_device* spi; } ;
struct ad7923_chip_info {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_8__ {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int len; int cs_change; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;

/* Variables and functions */
 int AD7923_CODING ; 
 int /*<<< orphan*/  AD7923_PM_MODE_OPS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AD7923_RANGE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ad7923_chip_info* ad7923_chip_info ; 
 int /*<<< orphan*/  ad7923_info ; 
 int /*<<< orphan*/  ad7923_trigger_handler ; 
 struct iio_dev* FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct ad7923_state* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct ad7923_state *st;
	struct iio_dev *indio_dev;
	const struct ad7923_chip_info *info;
	int ret;

	indio_dev = FUNC3(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC6(indio_dev);

	FUNC14(spi, indio_dev);

	st->spi = spi;
	st->settings = AD7923_CODING | AD7923_RANGE |
			FUNC0(AD7923_PM_MODE_OPS);

	info = &ad7923_chip_info[FUNC11(spi)->driver_data];

	indio_dev->name = FUNC11(spi)->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = info->channels;
	indio_dev->num_channels = info->num_channels;
	indio_dev->info = &ad7923_info;

	/* Setup default message */

	st->scan_single_xfer[0].tx_buf = &st->tx_buf[0];
	st->scan_single_xfer[0].len = 2;
	st->scan_single_xfer[0].cs_change = 1;
	st->scan_single_xfer[1].rx_buf = &st->rx_buf[0];
	st->scan_single_xfer[1].len = 2;

	FUNC13(&st->scan_single_msg);
	FUNC12(&st->scan_single_xfer[0], &st->scan_single_msg);
	FUNC12(&st->scan_single_xfer[1], &st->scan_single_msg);

	st->reg = FUNC4(&spi->dev, "refin");
	if (FUNC1(st->reg))
		return FUNC2(st->reg);

	ret = FUNC10(st->reg);
	if (ret)
		return ret;

	ret = FUNC8(indio_dev, NULL,
					 &ad7923_trigger_handler, NULL);
	if (ret)
		goto error_disable_reg;

	ret = FUNC5(indio_dev);
	if (ret)
		goto error_cleanup_ring;

	return 0;

error_cleanup_ring:
	FUNC7(indio_dev);
error_disable_reg:
	FUNC9(st->reg);

	return ret;
}