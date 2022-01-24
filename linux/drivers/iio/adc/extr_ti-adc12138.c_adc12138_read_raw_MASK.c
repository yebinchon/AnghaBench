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
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct adc12138 {int /*<<< orphan*/  vref_n; int /*<<< orphan*/  vref_p; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adc12138*,struct iio_chan_spec const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct adc12138* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *iio,
			     struct iio_chan_spec const *channel, int *value,
			     int *shift, long mask)
{
	struct adc12138 *adc = FUNC3(iio);
	int ret;
	__be16 data;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC4(&adc->lock);
		ret = FUNC1(adc, channel, &data);
		FUNC5(&adc->lock);
		if (ret)
			return ret;

		*value = FUNC7(FUNC2(data) >> 3, 12);

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC6(adc->vref_p);
		if (ret < 0)
			return ret;
		*value = ret;

		if (!FUNC0(adc->vref_n)) {
			ret = FUNC6(adc->vref_n);
			if (ret < 0)
				return ret;
			*value -= ret;
		}

		/* convert regulator output voltage to mV */
		*value /= 1000;
		*shift = channel->scan_type.realbits - 1;

		return IIO_VAL_FRACTIONAL_LOG2;
	case IIO_CHAN_INFO_OFFSET:
		if (!FUNC0(adc->vref_n)) {
			*value = FUNC6(adc->vref_n);
			if (*value < 0)
				return *value;
		} else {
			*value = 0;
		}

		/* convert regulator output voltage to mV */
		*value /= 1000;

		return IIO_VAL_INT;
	}

	return -EINVAL;
}