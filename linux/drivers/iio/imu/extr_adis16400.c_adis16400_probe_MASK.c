#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_10__ {TYPE_7__* burst; } ;
struct adis16400_state {TYPE_3__ adis; TYPE_6__* variant; int /*<<< orphan*/  avail_scan_mask; } ;
struct TYPE_12__ {int extra_len; } ;
struct TYPE_11__ {int flags; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; } ;
struct TYPE_9__ {size_t driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ADIS16400_BURST_DIAG_STAT ; 
 int ADIS16400_NO_BURST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 TYPE_7__ adis16400_burst ; 
 TYPE_6__* adis16400_chips ; 
 int /*<<< orphan*/  adis16400_data ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  adis16400_info ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct adis16400_state*) ; 
 int /*<<< orphan*/  adis16400_trigger_handler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct iio_dev*) ; 
 int FUNC4 (TYPE_3__*,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,struct iio_dev*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct iio_dev*) ; 
 struct adis16400_state* FUNC8 (struct iio_dev*) ; 
 TYPE_2__* FUNC9 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct adis16400_state *st;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC6(&spi->dev, sizeof(*st));
	if (indio_dev == NULL)
		return -ENOMEM;

	st = FUNC8(indio_dev);
	/* this is only used for removal purposes */
	FUNC10(spi, indio_dev);

	/* setup the industrialio driver allocated elements */
	st->variant = &adis16400_chips[FUNC9(spi)->driver_data];
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC9(spi)->name;
	indio_dev->channels = st->variant->channels;
	indio_dev->num_channels = st->variant->num_channels;
	indio_dev->info = &adis16400_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	if (!(st->variant->flags & ADIS16400_NO_BURST)) {
		FUNC2(st);
		indio_dev->available_scan_masks = st->avail_scan_mask;
		st->adis.burst = &adis16400_burst;
		if (st->variant->flags & ADIS16400_BURST_DIAG_STAT)
			st->adis.burst->extra_len = sizeof(u16);
	}

	ret = FUNC4(&st->adis, indio_dev, spi, &adis16400_data);
	if (ret)
		return ret;

	ret = FUNC5(&st->adis, indio_dev,
			adis16400_trigger_handler);
	if (ret)
		return ret;

	/* Get the device into a sane initial state */
	ret = FUNC1(indio_dev);
	if (ret)
		goto error_cleanup_buffer;
	ret = FUNC7(indio_dev);
	if (ret)
		goto error_cleanup_buffer;

	FUNC0(indio_dev);
	return 0;

error_cleanup_buffer:
	FUNC3(&st->adis, indio_dev);
	return ret;
}