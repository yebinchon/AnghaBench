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
struct lpc32xx_adc_state {int value; int /*<<< orphan*/  vref; int /*<<< orphan*/  clk; int /*<<< orphan*/  completion; int /*<<< orphan*/  adc_base; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int address; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LPC32XXAD_INTERNAL ; 
 int LPC32XXAD_PDN_CTRL ; 
 int LPC32XXAD_REFm ; 
 int LPC32XXAD_REFp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LPC32XXAD_STROBE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct lpc32xx_adc_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val,
			    int *val2,
			    long mask)
{
	struct lpc32xx_adc_state *st = FUNC5(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC6(&indio_dev->mlock);
		ret = FUNC4(st->clk);
		if (ret) {
			FUNC7(&indio_dev->mlock);
			return ret;
		}
		/* Measurement setup */
		FUNC2(LPC32XXAD_INTERNAL | (chan->address) |
			     LPC32XXAD_REFp | LPC32XXAD_REFm,
			     FUNC1(st->adc_base));
		/* Trigger conversion */
		FUNC2(LPC32XXAD_PDN_CTRL | LPC32XXAD_STROBE,
			     FUNC0(st->adc_base));
		FUNC9(&st->completion); /* set by ISR */
		FUNC3(st->clk);
		*val = st->value;
		FUNC7(&indio_dev->mlock);

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		*val = FUNC8(st->vref) / 1000;
		*val2 =  10;

		return IIO_VAL_FRACTIONAL_LOG2;
	default:
		return -EINVAL;
	}
}