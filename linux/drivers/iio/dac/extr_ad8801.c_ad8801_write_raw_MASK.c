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
struct iio_chan_spec {size_t channel; } ;
struct ad8801_state {int* dac_cache; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int FUNC0 (struct ad8801_state*,size_t,int) ; 
 struct ad8801_state* FUNC1 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int val, int val2, long mask)
{
	struct ad8801_state *state = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (val >= 256 || val < 0)
			return -EINVAL;

		ret = FUNC0(state, chan->channel, val);
		if (ret == 0)
			state->dac_cache[chan->channel] = val;
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}