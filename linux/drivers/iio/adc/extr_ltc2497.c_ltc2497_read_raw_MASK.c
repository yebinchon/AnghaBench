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
struct ltc2497_st {int /*<<< orphan*/  ref; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 struct ltc2497_st* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct ltc2497_st*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	struct ltc2497_st *st = FUNC0(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC2(&indio_dev->mlock);
		ret = FUNC1(st, chan->address, val);
		FUNC3(&indio_dev->mlock);
		if (ret < 0)
			return ret;

		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		ret = FUNC4(st->ref);
		if (ret < 0)
			return ret;

		*val = ret / 1000;
		*val2 = 17;

		return IIO_VAL_FRACTIONAL_LOG2;

	default:
		return -EINVAL;
	}
}