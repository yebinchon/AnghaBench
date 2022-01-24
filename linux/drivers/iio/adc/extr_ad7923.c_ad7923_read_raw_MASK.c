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
struct iio_chan_spec {int address; TYPE_1__ scan_type; } ;
struct ad7923_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (int,int,int) ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC1 (struct ad7923_state*) ; 
 int FUNC2 (struct ad7923_state*,int) ; 
 int FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 struct ad7923_state* FUNC5 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	int ret;
	struct ad7923_state *st = FUNC5(indio_dev);

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC3(indio_dev);
		if (ret)
			return ret;
		ret = FUNC2(st, chan->address);
		FUNC4(indio_dev);

		if (ret < 0)
			return ret;

		if (chan->address == FUNC0(ret, 12, 4))
			*val = FUNC0(ret, 0, 12);
		else
			return -EIO;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC1(st);
		if (ret < 0)
			return ret;
		*val = ret;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	}
	return -EINVAL;
}