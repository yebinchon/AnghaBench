#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_6__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; TYPE_6__* parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/ * info; TYPE_3__* channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_12__ {int len; int /*<<< orphan*/ * rx_buf; } ;
struct ad7476_state {int /*<<< orphan*/  reg; TYPE_8__* chip_info; int /*<<< orphan*/  msg; TYPE_4__ xfer; int /*<<< orphan*/  data; struct spi_device* spi; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* reset ) (struct ad7476_state*) ;TYPE_3__* channel; } ;
struct TYPE_13__ {size_t driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int storagebits; } ;
struct TYPE_11__ {TYPE_2__ scan_type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_8__* ad7476_chip_info_tbl ; 
 int /*<<< orphan*/  ad7476_info ; 
 int /*<<< orphan*/  ad7476_trigger_handler ; 
 struct iio_dev* FUNC2 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ad7476_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct ad7476_state*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct ad7476_state *st;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC2(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC5(indio_dev);
	st->chip_info =
		&ad7476_chip_info_tbl[FUNC10(spi)->driver_data];

	st->reg = FUNC3(&spi->dev, "vcc");
	if (FUNC0(st->reg))
		return FUNC1(st->reg);

	ret = FUNC9(st->reg);
	if (ret)
		return ret;

	FUNC13(spi, indio_dev);

	st->spi = spi;

	/* Establish that the iio_dev is a child of the spi device */
	indio_dev->dev.parent = &spi->dev;
	indio_dev->dev.of_node = spi->dev.of_node;
	indio_dev->name = FUNC10(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_info->channel;
	indio_dev->num_channels = 2;
	indio_dev->info = &ad7476_info;
	/* Setup default message */

	st->xfer.rx_buf = &st->data;
	st->xfer.len = st->chip_info->channel[0].scan_type.storagebits / 8;

	FUNC12(&st->msg);
	FUNC11(&st->xfer, &st->msg);

	ret = FUNC7(indio_dev, NULL,
			&ad7476_trigger_handler, NULL);
	if (ret)
		goto error_disable_reg;

	if (st->chip_info->reset)
		st->chip_info->reset(st);

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_ring_unregister;
	return 0;

error_ring_unregister:
	FUNC6(indio_dev);
error_disable_reg:
	FUNC8(st->reg);

	return ret;
}