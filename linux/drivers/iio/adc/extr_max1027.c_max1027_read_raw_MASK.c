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
struct max1027_state {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 131 
#define  IIO_CHAN_INFO_SCALE 130 
#define  IIO_TEMP 129 
 int IIO_VAL_FRACTIONAL ; 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
#define  IIO_VOLTAGE 128 
 struct max1027_state* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct iio_dev*,struct iio_chan_spec const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int *val, int *val2, long mask)
{
	int ret = 0;
	struct max1027_state *st = FUNC0(indio_dev);

	FUNC2(&st->lock);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC1(indio_dev, chan, val);
		break;
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_TEMP:
			*val = 1;
			*val2 = 8;
			ret = IIO_VAL_FRACTIONAL;
			break;
		case IIO_VOLTAGE:
			*val = 2500;
			*val2 = 10;
			ret = IIO_VAL_FRACTIONAL_LOG2;
			break;
		default:
			ret = -EINVAL;
			break;
		}
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC3(&st->lock);

	return ret;
}