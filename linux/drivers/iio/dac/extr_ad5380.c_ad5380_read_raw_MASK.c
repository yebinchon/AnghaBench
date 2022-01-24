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
struct iio_chan_spec {TYPE_1__ scan_type; int /*<<< orphan*/  address; } ;
struct ad5380_state {int vref; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 131 
#define  IIO_CHAN_INFO_CALIBSCALE 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC1 (struct iio_chan_spec const*,long) ; 
 struct ad5380_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
	struct ad5380_state *st = FUNC2(indio_dev);
	int ret;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
	case IIO_CHAN_INFO_CALIBSCALE:
		ret = FUNC3(st->regmap, FUNC1(chan, info),
					val);
		if (ret)
			return ret;
		*val >>= chan->scan_type.shift;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_CALIBBIAS:
		ret = FUNC3(st->regmap, FUNC0(chan->address),
					val);
		if (ret)
			return ret;
		*val >>= chan->scan_type.shift;
		*val -= (1 << chan->scan_type.realbits) / 2;
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 2 * st->vref;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	default:
		break;
	}

	return -EINVAL;
}