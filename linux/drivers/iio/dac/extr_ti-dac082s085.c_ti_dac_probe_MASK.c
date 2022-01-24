#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ti_dac_spec {int /*<<< orphan*/  resolution; int /*<<< orphan*/  num_channels; } ;
struct TYPE_6__ {struct spi_device* spi; } ;
struct TYPE_7__ {int len; int /*<<< orphan*/ * tx_buf; } ;
struct ti_dac_chip {int /*<<< orphan*/  vref; int /*<<< orphan*/  lock; int /*<<< orphan*/  resolution; TYPE_2__ mesg; TYPE_3__ xfer; int /*<<< orphan*/  buf; } ;
struct device {int dummy; } ;
struct spi_device {int /*<<< orphan*/  modalias; struct device dev; } ;
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct TYPE_8__ {size_t driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_ALL_UPDATE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct iio_dev* FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct iio_dev*) ; 
 struct ti_dac_chip* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  ti_dac_channels ; 
 int FUNC14 (struct ti_dac_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_dac_info ; 
 struct ti_dac_spec* ti_dac_spec ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	const struct ti_dac_spec *spec;
	struct ti_dac_chip *ti_dac;
	struct iio_dev *indio_dev;
	int ret;

	indio_dev = FUNC3(dev, sizeof(*ti_dac));
	if (!indio_dev)
		return -ENOMEM;

	indio_dev->dev.parent = dev;
	indio_dev->info = &ti_dac_info;
	indio_dev->name = spi->modalias;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ti_dac_channels;
	FUNC13(spi, indio_dev);

	ti_dac = FUNC6(indio_dev);
	ti_dac->xfer.tx_buf = &ti_dac->buf;
	ti_dac->xfer.len = sizeof(ti_dac->buf);
	FUNC12(&ti_dac->mesg, &ti_dac->xfer, 1);
	ti_dac->mesg.spi = spi;

	spec = &ti_dac_spec[FUNC11(spi)->driver_data];
	indio_dev->num_channels = spec->num_channels;
	ti_dac->resolution = spec->resolution;

	ti_dac->vref = FUNC4(dev, "vref");
	if (FUNC0(ti_dac->vref))
		return FUNC1(ti_dac->vref);

	ret = FUNC10(ti_dac->vref);
	if (ret < 0)
		return ret;

	FUNC8(&ti_dac->lock);

	ret = FUNC14(ti_dac, WRITE_ALL_UPDATE, 0);
	if (ret) {
		FUNC2(dev, "failed to initialize outputs to 0\n");
		goto err;
	}

	ret = FUNC5(indio_dev);
	if (ret)
		goto err;

	return 0;

err:
	FUNC7(&ti_dac->lock);
	FUNC9(ti_dac->vref);
	return ret;
}