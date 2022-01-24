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
struct iio_chan_spec {int /*<<< orphan*/  type; int /*<<< orphan*/  channel2; } ;
struct bmi160_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (struct bmi160_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct bmi160_data*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC2 (struct bmi160_data*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bmi160_data* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	int ret;
	struct bmi160_data *data = FUNC4(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC0(data, chan->type, chan->channel2, val);
		if (ret)
			return ret;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 0;
		ret = FUNC2(data,
				       FUNC3(chan->type), val2);
		return ret ? ret : IIO_VAL_INT_PLUS_MICRO;
	case IIO_CHAN_INFO_SAMP_FREQ:
		ret = FUNC1(data, FUNC3(chan->type),
				     val, val2);
		return ret ? ret : IIO_VAL_INT_PLUS_MICRO;
	default:
		return -EINVAL;
	}

	return 0;
}