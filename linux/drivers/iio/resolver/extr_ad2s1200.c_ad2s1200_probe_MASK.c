#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; int /*<<< orphan*/  max_speed_hz; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad2s1200_state {void* rdvel; void* sample; struct spi_device* sdev; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD2S1200_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  ad2s1200_channels ; 
 int /*<<< orphan*/  ad2s1200_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct ad2s1200_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct iio_dev*) ; 
 int FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct ad2s1200_state *st;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC5(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	FUNC10(spi, indio_dev);
	st = FUNC7(indio_dev);
	FUNC8(&st->lock);
	st->sdev = spi;

	st->sample = FUNC4(&spi->dev, "adi,sample", GPIOD_OUT_LOW);
	if (FUNC1(st->sample)) {
		FUNC3(&spi->dev, "Failed to claim SAMPLE gpio: err=%ld\n",
			FUNC2(st->sample));
		return FUNC2(st->sample);
	}

	st->rdvel = FUNC4(&spi->dev, "adi,rdvel", GPIOD_OUT_LOW);
	if (FUNC1(st->rdvel)) {
		FUNC3(&spi->dev, "Failed to claim RDVEL gpio: err=%ld\n",
			FUNC2(st->rdvel));
		return FUNC2(st->rdvel);
	}

	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &ad2s1200_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ad2s1200_channels;
	indio_dev->num_channels = FUNC0(ad2s1200_channels);
	indio_dev->name = FUNC9(spi)->name;

	spi->max_speed_hz = AD2S1200_HZ;
	spi->mode = SPI_MODE_3;
	ret = FUNC11(spi);

	if (ret < 0) {
		FUNC3(&spi->dev, "spi_setup failed!\n");
		return ret;
	}

	return FUNC6(&spi->dev, indio_dev);
}