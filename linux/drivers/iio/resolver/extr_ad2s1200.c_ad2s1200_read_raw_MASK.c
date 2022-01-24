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
struct iio_chan_spec {int const type; } ;
struct ad2s1200_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  rx; int /*<<< orphan*/  sdev; int /*<<< orphan*/  rdvel; int /*<<< orphan*/  sample; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_ANGL 131 
#define  IIO_ANGL_VEL 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int IIO_VAL_INT_PLUS_NANO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ad2s1200_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val,
			     int *val2,
			     long m)
{
	struct ad2s1200_state *st = FUNC2(indio_dev);
	int ret;

	switch (m) {
	case IIO_CHAN_INFO_SCALE:
		switch (chan->type) {
		case IIO_ANGL:
			/* 2 * Pi / (2^12 - 1) ~= 0.001534355 */
			*val = 0;
			*val2 = 1534355;
			return IIO_VAL_INT_PLUS_NANO;
		case IIO_ANGL_VEL:
			/* 2 * Pi ~= 6.283185 */
			*val = 6;
			*val2 = 283185;
			return IIO_VAL_INT_PLUS_MICRO;
		default:
			return -EINVAL;
		}
		break;
	case IIO_CHAN_INFO_RAW:
		FUNC3(&st->lock);
		FUNC1(st->sample, 0);

		/* delay (6 * AD2S1200_TSCLK + 20) nano seconds */
		FUNC7(1);
		FUNC1(st->sample, 1);
		FUNC1(st->rdvel, !!(chan->type == IIO_ANGL));

		ret = FUNC6(st->sdev, &st->rx, 2);
		if (ret < 0) {
			FUNC4(&st->lock);
			return ret;
		}

		switch (chan->type) {
		case IIO_ANGL:
			*val = FUNC0(&st->rx) >> 4;
			break;
		case IIO_ANGL_VEL:
			*val = FUNC5(FUNC0(&st->rx) >> 4, 11);
			break;
		default:
			FUNC4(&st->lock);
			return -EINVAL;
		}

		/* delay (2 * AD2S1200_TSCLK + 20) ns for sample pulse */
		FUNC7(1);
		FUNC4(&st->lock);

		return IIO_VAL_INT;
	default:
		break;
	}

	return -EINVAL;
}