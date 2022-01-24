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
struct iio_chan_spec {TYPE_1__ scan_type; int /*<<< orphan*/  channel; int /*<<< orphan*/  address; } ;
struct ad5764_state {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 132 
#define  IIO_CHAN_INFO_CALIBSCALE 131 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC3 (struct ad5764_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iio_dev*,unsigned int,int*) ; 
 struct ad5764_state* FUNC5 (struct iio_dev*) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
	struct ad5764_state *st = FUNC5(indio_dev);
	unsigned int reg;
	int vref;
	int ret;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		reg = FUNC0(chan->address);
		ret = FUNC4(indio_dev, reg, val);
		if (ret < 0)
			return ret;
		*val >>= chan->scan_type.shift;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_CALIBBIAS:
		reg = FUNC2(chan->address);
		ret = FUNC4(indio_dev, reg, val);
		if (ret < 0)
			return ret;
		*val = FUNC6(*val, 7);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_CALIBSCALE:
		reg = FUNC1(chan->address);
		ret = FUNC4(indio_dev, reg, val);
		if (ret < 0)
			return ret;
		*val = FUNC6(*val, 5);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		/* vout = 4 * vref + ((dac_code / 65536) - 0.5) */
		vref = FUNC3(st, chan->channel);
		if (vref < 0)
			return vref;

		*val = vref * 4 / 1000;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	case IIO_CHAN_INFO_OFFSET:
		*val = -(1 << chan->scan_type.realbits) / 2;
		return IIO_VAL_INT;
	}

	return -EINVAL;
}