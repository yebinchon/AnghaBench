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
struct stm32_dfsdm_adc {size_t bufi; size_t buf_sz; int /*<<< orphan*/ * rx_buf; } ;
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int scan_bytes; int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct stm32_dfsdm_adc* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stm32_dfsdm_adc*) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_dfsdm_adc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct stm32_dfsdm_adc *adc = FUNC0(indio_dev);
	int available = FUNC3(adc);

	while (available >= indio_dev->scan_bytes) {
		s32 *buffer = (s32 *)&adc->rx_buf[adc->bufi];

		FUNC4(adc, buffer);

		FUNC1(indio_dev, buffer,
						   pf->timestamp);
		available -= indio_dev->scan_bytes;
		adc->bufi += indio_dev->scan_bytes;
		if (adc->bufi >= adc->buf_sz)
			adc->bufi = 0;
	}

	FUNC2(indio_dev->trig);

	return IRQ_HANDLED;
}