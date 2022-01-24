#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spi_device {int dummy; } ;
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct bma220_data {int* tx_buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; struct spi_device* spi_device; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int BMA220_READ_MASK ; 
 int BMA220_REG_ACCEL_X ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  bma220_channels ; 
 struct bma220_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct spi_device*,int*,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *p)
{
	int ret;
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct bma220_data *data = FUNC1(indio_dev);
	struct spi_device *spi = data->spi_device;

	FUNC4(&data->lock);
	data->tx_buf[0] = BMA220_REG_ACCEL_X | BMA220_READ_MASK;
	ret = FUNC6(spi, data->tx_buf, 1, data->buffer,
				  FUNC0(bma220_channels) - 1);
	if (ret < 0)
		goto err;

	FUNC2(indio_dev, data->buffer,
					   pf->timestamp);
err:
	FUNC5(&data->lock);
	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}