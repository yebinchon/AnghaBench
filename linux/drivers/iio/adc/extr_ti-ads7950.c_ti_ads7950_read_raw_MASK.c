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
struct ti_ads7950_state {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {int address; TYPE_1__ scan_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int FUNC0 (int,int,int) ; 
 struct ti_ads7950_state* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct ti_ads7950_state*) ; 
 int FUNC3 (struct iio_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan,
			       int *val, int *val2, long m)
{
	struct ti_ads7950_state *st = FUNC1(indio_dev);
	int ret;

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC3(indio_dev, chan->address);
		if (ret < 0)
			return ret;

		if (chan->address != FUNC0(ret, 12, 4))
			return -EIO;

		*val = FUNC0(ret, chan->scan_type.shift,
					  chan->scan_type.realbits);

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC2(st);
		if (ret < 0)
			return ret;

		*val = ret;
		*val2 = (1 << chan->scan_type.realbits) - 1;

		return IIO_VAL_FRACTIONAL;
	}

	return -EINVAL;
}