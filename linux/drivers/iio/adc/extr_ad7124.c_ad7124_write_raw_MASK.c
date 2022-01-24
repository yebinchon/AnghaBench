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
struct TYPE_3__ {int realbits; } ;
struct iio_chan_spec {size_t address; TYPE_1__ scan_type; } ;
struct ad7124_state {TYPE_2__* channel_config; } ;
struct TYPE_4__ {long long vref_mv; int /*<<< orphan*/  bipolar; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int FUNC1 (struct ad7124_state*,size_t,unsigned int) ; 
 int FUNC2 (struct ad7124_state*,size_t,int) ; 
 struct ad7124_state* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long info)
{
	struct ad7124_state *st = FUNC3(indio_dev);
	unsigned int res, gain, full_scale, vref;

	switch (info) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		if (val2 != 0)
			return -EINVAL;

		return FUNC2(st, chan->address, val);
	case IIO_CHAN_INFO_SCALE:
		if (val != 0)
			return -EINVAL;

		if (st->channel_config[chan->address].bipolar)
			full_scale = 1 << (chan->scan_type.realbits - 1);
		else
			full_scale = 1 << chan->scan_type.realbits;

		vref = st->channel_config[chan->address].vref_mv * 1000000LL;
		res = FUNC0(vref, full_scale);
		gain = FUNC0(res, val2);

		return FUNC1(st, chan->address, gain);
	default:
		return -EINVAL;
	}
}