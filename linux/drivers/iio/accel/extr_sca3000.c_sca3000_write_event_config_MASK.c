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
struct sca3000_state {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int /*<<< orphan*/  address; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_MOD_X 131 
#define  IIO_MOD_X_AND_Y_AND_Z 130 
#define  IIO_MOD_Y 129 
#define  IIO_MOD_Z 128 
 struct sca3000_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iio_dev*,int) ; 
 int FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				      const struct iio_chan_spec *chan,
				      enum iio_event_type type,
				      enum iio_event_direction dir,
				      int state)
{
	struct sca3000_state *st = FUNC0(indio_dev);
	int ret;

	FUNC1(&st->lock);
	switch (chan->channel2) {
	case IIO_MOD_X_AND_Y_AND_Z:
		ret = FUNC3(indio_dev, state);
		break;

	case IIO_MOD_X:
	case IIO_MOD_Y:
	case IIO_MOD_Z:
		ret = FUNC4(indio_dev,
						      chan->address,
						      state);
		break;
	default:
		ret = -EINVAL;
		break;
	}
	FUNC2(&st->lock);

	return ret;
}