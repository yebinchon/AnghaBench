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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int /*<<< orphan*/  channel; } ;
struct at91_adc_state {int done; int last_value; int vref_mv; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq_data_avail; int /*<<< orphan*/  chnb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT91_ADC_CHDR ; 
 int /*<<< orphan*/  AT91_ADC_CHER ; 
 int /*<<< orphan*/  AT91_ADC_CR ; 
 int /*<<< orphan*/  AT91_ADC_IDR ; 
 int /*<<< orphan*/  AT91_ADC_IER ; 
 int /*<<< orphan*/  AT91_ADC_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC2 (struct at91_adc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct at91_adc_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *idev,
			     struct iio_chan_spec const *chan,
			     int *val, int *val2, long mask)
{
	struct at91_adc_state *st = FUNC4(idev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC6(&st->lock);

		st->chnb = chan->channel;
		FUNC2(st, AT91_ADC_CHER,
				FUNC0(chan->channel));
		FUNC2(st, AT91_ADC_IER, FUNC1(chan->channel));
		FUNC2(st, AT91_ADC_CR, AT91_ADC_START);

		ret = FUNC8(st->wq_data_avail,
						       st->done,
						       FUNC5(1000));

		/* Disable interrupts, regardless if adc conversion was
		 * successful or not
		 */
		FUNC2(st, AT91_ADC_CHDR,
				FUNC0(chan->channel));
		FUNC2(st, AT91_ADC_IDR, FUNC1(chan->channel));

		if (ret > 0) {
			/* a valid conversion took place */
			*val = st->last_value;
			st->last_value = 0;
			st->done = false;
			ret = IIO_VAL_INT;
		} else if (ret == 0) {
			/* conversion timeout */
			FUNC3(&idev->dev, "ADC Channel %d timeout.\n",
				chan->channel);
			ret = -ETIMEDOUT;
		}

		FUNC7(&st->lock);
		return ret;

	case IIO_CHAN_INFO_SCALE:
		*val = st->vref_mv;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	default:
		break;
	}
	return -EINVAL;
}