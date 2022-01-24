#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  realbits; } ;
struct iio_chan_spec {size_t address; TYPE_1__ scan_type; } ;
struct ad7124_state {TYPE_2__* channel_config; int /*<<< orphan*/  sd; } ;
struct TYPE_4__ {int ain; int pga_bits; int vref_mv; int odr; int /*<<< orphan*/  bipolar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 struct ad7124_state* FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long info)
{
	struct ad7124_state *st = FUNC4(indio_dev);
	int idx, ret;

	switch (info) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC3(indio_dev, chan, val);
		if (ret < 0)
			return ret;

		/* After the conversion is performed, disable the channel */
		ret = FUNC2(&st->sd,
				      FUNC0(chan->address), 2,
				      st->channel_config[chan->address].ain |
				      FUNC1(0));
		if (ret < 0)
			return ret;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		idx = st->channel_config[chan->address].pga_bits;
		*val = st->channel_config[chan->address].vref_mv;
		if (st->channel_config[chan->address].bipolar)
			*val2 = chan->scan_type.realbits - 1 + idx;
		else
			*val2 = chan->scan_type.realbits + idx;

		return IIO_VAL_FRACTIONAL_LOG2;
	case IIO_CHAN_INFO_OFFSET:
		if (st->channel_config[chan->address].bipolar)
			*val = -(1 << (chan->scan_type.realbits - 1));
		else
			*val = 0;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SAMP_FREQ:
		*val = st->channel_config[chan->address].odr;

		return IIO_VAL_INT;
	default:
		return -EINVAL;
	}
}