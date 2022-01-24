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
typedef  int u32 ;
struct spear_adc_state {int vref_external; int value; int current_clk; int /*<<< orphan*/  completion; int /*<<< orphan*/  avg_samples; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int SPEAR_ADC_DATA_BITS ; 
 int SPEAR_ADC_STATUS_ADC_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SPEAR_ADC_STATUS_START_CONVERSION ; 
 int SPEAR_ADC_STATUS_VREF_INTERNAL ; 
 struct spear_adc_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spear_adc_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int *val,
			      int *val2,
			      long mask)
{
	struct spear_adc_state *st = FUNC2(indio_dev);
	u32 status;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC3(&indio_dev->mlock);

		status = FUNC1(chan->channel) |
			FUNC0(st->avg_samples) |
			SPEAR_ADC_STATUS_START_CONVERSION |
			SPEAR_ADC_STATUS_ADC_ENABLE;
		if (st->vref_external == 0)
			status |= SPEAR_ADC_STATUS_VREF_INTERNAL;

		FUNC5(st, status);
		FUNC6(&st->completion); /* set by ISR */
		*val = st->value;

		FUNC4(&indio_dev->mlock);

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		*val = st->vref_external;
		*val2 = SPEAR_ADC_DATA_BITS;
		return IIO_VAL_FRACTIONAL_LOG2;
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val = st->current_clk;
		return IIO_VAL_INT;
	}

	return -EINVAL;
}