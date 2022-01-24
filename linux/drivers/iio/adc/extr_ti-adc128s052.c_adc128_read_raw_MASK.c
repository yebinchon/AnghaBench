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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct adc128 {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct adc128*,int /*<<< orphan*/ ) ; 
 struct adc128* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *channel, int *val,
			   int *val2, long mask)
{
	struct adc128 *adc = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:

		ret = FUNC0(adc, channel->channel);
		if (ret < 0)
			return ret;

		*val = ret;
		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:

		ret = FUNC2(adc->reg);
		if (ret < 0)
			return ret;

		*val = ret / 1000;
		*val2 = 12;
		return IIO_VAL_FRACTIONAL_LOG2;

	default:
		return -EINVAL;
	}

}