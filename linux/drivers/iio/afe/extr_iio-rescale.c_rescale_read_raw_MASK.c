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
struct rescale {int numerator; int denominator; int /*<<< orphan*/  source; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  IIO_CHAN_INFO_RAW 132 
#define  IIO_CHAN_INFO_SCALE 131 
#define  IIO_VAL_FRACTIONAL 130 
#define  IIO_VAL_FRACTIONAL_LOG2 129 
#define  IIO_VAL_INT 128 
 int /*<<< orphan*/  FUNC0 (unsigned long long,long long) ; 
 struct rescale* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct rescale *rescale = FUNC1(indio_dev);
	unsigned long long tmp;
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		return FUNC2(rescale->source, val);

	case IIO_CHAN_INFO_SCALE:
		ret = FUNC3(rescale->source, val, val2);
		switch (ret) {
		case IIO_VAL_FRACTIONAL:
			*val *= rescale->numerator;
			*val2 *= rescale->denominator;
			return ret;
		case IIO_VAL_INT:
			*val *= rescale->numerator;
			if (rescale->denominator == 1)
				return ret;
			*val2 = rescale->denominator;
			return IIO_VAL_FRACTIONAL;
		case IIO_VAL_FRACTIONAL_LOG2:
			tmp = *val * 1000000000LL;
			FUNC0(tmp, rescale->denominator);
			tmp *= rescale->numerator;
			FUNC0(tmp, 1000000000LL);
			*val = tmp;
			return ret;
		default:
			return -EOPNOTSUPP;
		}
	default:
		return -EINVAL;
	}
}