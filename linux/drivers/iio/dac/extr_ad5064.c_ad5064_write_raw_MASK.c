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
struct TYPE_2__ {int realbits; int /*<<< orphan*/  shift; } ;
struct iio_chan_spec {size_t channel; TYPE_1__ scan_type; int /*<<< orphan*/  address; } ;
struct ad5064_state {int* dac_cache; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5064_CMD_WRITE_INPUT_N_UPDATE_N ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 int FUNC0 (struct ad5064_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ad5064_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
	struct iio_chan_spec const *chan, int val, int val2, long mask)
{
	struct ad5064_state *st = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (val >= (1 << chan->scan_type.realbits) || val < 0)
			return -EINVAL;

		FUNC2(&st->lock);
		ret = FUNC0(st, AD5064_CMD_WRITE_INPUT_N_UPDATE_N,
				chan->address, val, chan->scan_type.shift);
		if (ret == 0)
			st->dac_cache[chan->channel] = val;
		FUNC3(&st->lock);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}