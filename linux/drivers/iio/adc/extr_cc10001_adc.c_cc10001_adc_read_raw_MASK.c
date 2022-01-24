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
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct cc10001_adc_device {int /*<<< orphan*/  reg; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CC10001_INVALID_SAMPLED ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct iio_dev*,struct iio_chan_spec const*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct cc10001_adc_device* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
				 struct iio_chan_spec const *chan,
				 int *val, int *val2, long mask)
{
	struct cc10001_adc_device *adc_dev = FUNC2(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (FUNC1(indio_dev))
			return -EBUSY;
		FUNC3(&adc_dev->lock);
		*val = FUNC0(indio_dev, chan);
		FUNC4(&adc_dev->lock);

		if (*val == CC10001_INVALID_SAMPLED)
			return -EIO;
		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		ret = FUNC5(adc_dev->reg);
		if (ret < 0)
			return ret;

		*val = ret / 1000;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;

	default:
		return -EINVAL;
	}
}