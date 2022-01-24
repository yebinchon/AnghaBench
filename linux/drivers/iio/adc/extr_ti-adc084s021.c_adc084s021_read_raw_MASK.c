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
struct TYPE_2__ {int shift; } ;
struct iio_chan_spec {int channel; TYPE_1__ scan_type; } ;
struct adc084s021 {int* tx_buf; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int FUNC0 (struct adc084s021*,int*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct adc084s021* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *channel, int *val,
			   int *val2, long mask)
{
	struct adc084s021 *adc = FUNC4(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC2(indio_dev);
		if (ret < 0)
			return ret;

		ret = FUNC6(adc->reg);
		if (ret) {
			FUNC3(indio_dev);
			return ret;
		}

		adc->tx_buf[0] = channel->channel << 3;
		ret = FUNC0(adc, val);
		FUNC3(indio_dev);
		FUNC5(adc->reg);
		if (ret < 0)
			return ret;

		*val = FUNC1(*val);
		*val = (*val >> channel->scan_type.shift) & 0xff;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC6(adc->reg);
		if (ret)
			return ret;

		ret = FUNC7(adc->reg);
		FUNC5(adc->reg);
		if (ret < 0)
			return ret;

		*val = ret / 1000;

		return IIO_VAL_INT;
	default:
		return -EINVAL;
	}
}