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
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int /*<<< orphan*/  scan_index; } ;
struct ad799x_state {int /*<<< orphan*/  vref; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC1 (struct ad799x_state*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ad799x_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	int ret;
	struct ad799x_state *st = FUNC4(indio_dev);

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC2(indio_dev);
		if (ret)
			return ret;
		ret = FUNC1(st, chan->scan_index);
		FUNC3(indio_dev);

		if (ret < 0)
			return ret;
		*val = (ret >> chan->scan_type.shift) &
			FUNC0(chan->scan_type.realbits - 1, 0);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC5(st->vref);
		if (ret < 0)
			return ret;
		*val = ret / 1000;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	}
	return -EINVAL;
}