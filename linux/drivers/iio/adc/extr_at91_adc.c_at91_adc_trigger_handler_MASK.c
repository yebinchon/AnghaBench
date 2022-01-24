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
struct iio_poll_func {int /*<<< orphan*/  timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int masklength; int /*<<< orphan*/  trig; struct iio_chan_spec* channels; int /*<<< orphan*/  active_scan_mask; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct at91_adc_state {int /*<<< orphan*/  irq; int /*<<< orphan*/ * buffer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT91_ADC_LCDR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct at91_adc_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *idev = pf->indio_dev;
	struct at91_adc_state *st = FUNC3(idev);
	struct iio_chan_spec const *chan;
	int i, j = 0;

	for (i = 0; i < idev->masklength; i++) {
		if (!FUNC6(i, idev->active_scan_mask))
			continue;
		chan = idev->channels + i;
		st->buffer[j] = FUNC1(st, FUNC0(st, chan->channel));
		j++;
	}

	FUNC4(idev, st->buffer, pf->timestamp);

	FUNC5(idev->trig);

	/* Needed to ACK the DRDY interruption */
	FUNC1(st, AT91_ADC_LCDR);

	FUNC2(st->irq);

	return IRQ_HANDLED;
}