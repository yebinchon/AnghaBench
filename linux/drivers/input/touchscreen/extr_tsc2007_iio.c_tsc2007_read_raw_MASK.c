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
struct tsc2007_iio {struct tsc2007* ts; } ;
struct tsc2007 {int /*<<< orphan*/  mlock; } ;
struct ts_event {void* z2; void* z1; void* x; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;

/* Variables and functions */
 int ADC_ON_12BIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 long IIO_CHAN_INFO_RAW ; 
 int IIO_VAL_INT ; 
 int PWRDOWN ; 
 int READ_X ; 
 int READ_Y ; 
 int READ_Z1 ; 
 int READ_Z2 ; 
 int TSC2007_MEASURE_AUX ; 
 int TSC2007_MEASURE_TEMP0 ; 
 int TSC2007_MEASURE_TEMP1 ; 
 struct tsc2007_iio* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tsc2007*,struct ts_event*) ; 
 int /*<<< orphan*/  tsc2007_iio_channel ; 
 int FUNC5 (struct tsc2007*) ; 
 void* FUNC6 (struct tsc2007*,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct tsc2007_iio *iio = FUNC1(indio_dev);
	struct tsc2007 *tsc = iio->ts;
	int adc_chan = chan->channel;
	int ret = 0;

	if (adc_chan >= FUNC0(tsc2007_iio_channel))
		return -EINVAL;

	if (mask != IIO_CHAN_INFO_RAW)
		return -EINVAL;

	FUNC2(&tsc->mlock);

	switch (chan->channel) {
	case 0:
		*val = FUNC6(tsc, READ_X);
		break;
	case 1:
		*val = FUNC6(tsc, READ_Y);
		break;
	case 2:
		*val = FUNC6(tsc, READ_Z1);
		break;
	case 3:
		*val = FUNC6(tsc, READ_Z2);
		break;
	case 4:
		*val = FUNC6(tsc, (ADC_ON_12BIT | TSC2007_MEASURE_AUX));
		break;
	case 5: {
		struct ts_event tc;

		tc.x = FUNC6(tsc, READ_X);
		tc.z1 = FUNC6(tsc, READ_Z1);
		tc.z2 = FUNC6(tsc, READ_Z2);
		*val = FUNC4(tsc, &tc);
		break;
	}
	case 6:
		*val = FUNC5(tsc);
		break;
	case 7:
		*val = FUNC6(tsc,
				    (ADC_ON_12BIT | TSC2007_MEASURE_TEMP0));
		break;
	case 8:
		*val = FUNC6(tsc,
				    (ADC_ON_12BIT | TSC2007_MEASURE_TEMP1));
		break;
	}

	/* Prepare for next touch reading - power down ADC, enable PENIRQ */
	FUNC6(tsc, PWRDOWN);

	FUNC3(&tsc->mlock);

	ret = IIO_VAL_INT;

	return ret;
}