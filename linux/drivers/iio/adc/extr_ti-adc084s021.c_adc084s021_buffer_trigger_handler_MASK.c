#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct adc084s021 {int /*<<< orphan*/  lock; TYPE_1__* spi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct adc084s021*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct adc084s021* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *pollfunc)
{
	struct iio_poll_func *pf = pollfunc;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct adc084s021 *adc = FUNC3(indio_dev);
	__be16 data[8] = {0}; /* 4 * 16-bit words of data + 8 bytes timestamp */

	FUNC6(&adc->lock);

	if (FUNC0(adc, &data) < 0)
		FUNC1(&adc->spi->dev, "Failed to read data\n");

	FUNC4(indio_dev, data,
					   FUNC2(indio_dev));
	FUNC7(&adc->lock);
	FUNC5(indio_dev->trig);

	return IRQ_HANDLED;
}