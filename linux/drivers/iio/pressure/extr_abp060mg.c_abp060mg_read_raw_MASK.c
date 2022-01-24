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
struct iio_chan_spec {int dummy; } ;
struct abp_state {int offset; int scale; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ABP060MG_NUM_COUNTS ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct abp_state*,int*) ; 
 struct abp_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan, int *val,
			int *val2, long mask)
{
	struct abp_state *state = FUNC1(indio_dev);
	int ret;

	FUNC2(&state->lock);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC0(state, val);
		break;
	case IIO_CHAN_INFO_OFFSET:
		*val = state->offset;
		ret = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_SCALE:
		*val = state->scale;
		*val2 = ABP060MG_NUM_COUNTS * 1000; /* to kPa */
		ret = IIO_VAL_FRACTIONAL;
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC3(&state->lock);
	return ret;
}