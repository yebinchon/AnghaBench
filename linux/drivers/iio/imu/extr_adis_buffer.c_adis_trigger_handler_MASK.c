#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct adis {scalar_t__ current_page; int /*<<< orphan*/  buffer; int /*<<< orphan*/  txrx_lock; TYPE_1__* data; TYPE_2__* spi; int /*<<< orphan*/  msg; scalar_t__* tx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ has_paging; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS_REG_PAGE_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct adis* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__*,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct adis *adis = FUNC2(indio_dev);
	int ret;

	if (!adis->buffer)
		return -ENOMEM;

	if (adis->data->has_paging) {
		FUNC5(&adis->txrx_lock);
		if (adis->current_page != 0) {
			adis->tx[0] = FUNC0(ADIS_REG_PAGE_ID);
			adis->tx[1] = 0;
			FUNC8(adis->spi, adis->tx, 2);
		}
	}

	ret = FUNC7(adis->spi, &adis->msg);
	if (ret)
		FUNC1(&adis->spi->dev, "Failed to read data: %d", ret);


	if (adis->data->has_paging) {
		adis->current_page = 0;
		FUNC6(&adis->txrx_lock);
	}

	FUNC3(indio_dev, adis->buffer,
		pf->timestamp);

	FUNC4(indio_dev->trig);

	return IRQ_HANDLED;
}