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
typedef  int u32 ;
typedef  int u16 ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {char sign; } ;
struct iio_chan_spec {scalar_t__ type; int /*<<< orphan*/  channel; TYPE_1__ scan_type; int /*<<< orphan*/  channel2; scalar_t__ differential; } ;
struct at91_adc_state {int conversion_done; int conversion_value; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq_data_available; struct iio_chan_spec const* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_SAMA5D2_CHDR ; 
 int /*<<< orphan*/  AT91_SAMA5D2_CHER ; 
 int /*<<< orphan*/  AT91_SAMA5D2_COR ; 
 int AT91_SAMA5D2_COR_DIFF_OFFSET ; 
 int /*<<< orphan*/  AT91_SAMA5D2_CR ; 
 int AT91_SAMA5D2_CR_START ; 
 int /*<<< orphan*/  AT91_SAMA5D2_IDR ; 
 int /*<<< orphan*/  AT91_SAMA5D2_IER ; 
 int /*<<< orphan*/  AT91_SAMA5D2_LCDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 scalar_t__ IIO_POSITIONRELATIVE ; 
 scalar_t__ IIO_PRESSURE ; 
 int FUNC1 (struct at91_adc_state*,int*) ; 
 int FUNC2 (struct at91_adc_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct at91_adc_state*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct at91_adc_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct iio_dev*) ; 
 struct at91_adc_state* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct iio_dev *indio_dev,
				  struct iio_chan_spec const *chan, int *val)
{
	struct at91_adc_state *st = FUNC8(indio_dev);
	u32 cor = 0;
	u16 tmp_val;
	int ret;

	/*
	 * Keep in mind that we cannot use software trigger or touchscreen
	 * if external trigger is enabled
	 */
	if (chan->type == IIO_POSITIONRELATIVE) {
		ret = FUNC6(indio_dev);
		if (ret)
			return ret;
		FUNC10(&st->lock);

		ret = FUNC2(st, chan->channel,
					     &tmp_val);
		*val = tmp_val;
		FUNC11(&st->lock);
		FUNC7(indio_dev);

		return FUNC1(st, val);
	}
	if (chan->type == IIO_PRESSURE) {
		ret = FUNC6(indio_dev);
		if (ret)
			return ret;
		FUNC10(&st->lock);

		ret = FUNC3(st, chan->channel,
					     &tmp_val);
		*val = tmp_val;
		FUNC11(&st->lock);
		FUNC7(indio_dev);

		return FUNC1(st, val);
	}

	/* in this case we have a voltage channel */

	ret = FUNC6(indio_dev);
	if (ret)
		return ret;
	FUNC10(&st->lock);

	st->chan = chan;

	if (chan->differential)
		cor = (FUNC0(chan->channel) | FUNC0(chan->channel2)) <<
		      AT91_SAMA5D2_COR_DIFF_OFFSET;

	FUNC5(st, AT91_SAMA5D2_COR, cor);
	FUNC5(st, AT91_SAMA5D2_CHER, FUNC0(chan->channel));
	FUNC5(st, AT91_SAMA5D2_IER, FUNC0(chan->channel));
	FUNC5(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_START);

	ret = FUNC13(st->wq_data_available,
					       st->conversion_done,
					       FUNC9(1000));
	if (ret == 0)
		ret = -ETIMEDOUT;

	if (ret > 0) {
		*val = st->conversion_value;
		ret = FUNC1(st, val);
		if (chan->scan_type.sign == 's')
			*val = FUNC12(*val, 11);
		st->conversion_done = false;
	}

	FUNC5(st, AT91_SAMA5D2_IDR, FUNC0(chan->channel));
	FUNC5(st, AT91_SAMA5D2_CHDR, FUNC0(chan->channel));

	/* Needed to ACK the DRDY interruption */
	FUNC4(st, AT91_SAMA5D2_LCDR);

	FUNC11(&st->lock);

	FUNC7(indio_dev);
	return ret;
}