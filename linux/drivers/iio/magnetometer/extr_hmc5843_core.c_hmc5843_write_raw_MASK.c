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
struct iio_chan_spec {int dummy; } ;
struct hmc5843_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int FUNC0 (struct hmc5843_data*,int,int) ; 
 int FUNC1 (struct hmc5843_data*,int,int) ; 
 int FUNC2 (struct hmc5843_data*,int) ; 
 int FUNC3 (struct hmc5843_data*,int) ; 
 struct hmc5843_data* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct hmc5843_data *data = FUNC4(indio_dev);
	int rate, range;

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		rate = FUNC0(data, val, val2);
		if (rate < 0)
			return -EINVAL;

		return FUNC3(data, rate);
	case IIO_CHAN_INFO_SCALE:
		range = FUNC1(data, val, val2);
		if (range < 0)
			return -EINVAL;

		return FUNC2(data, range);
	default:
		return -EINVAL;
	}
}