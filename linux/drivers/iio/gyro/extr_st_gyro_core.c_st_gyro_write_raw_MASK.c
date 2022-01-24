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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iio_dev*,int) ; 
 int FUNC3 (struct iio_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
		struct iio_chan_spec const *chan, int val, int val2, long mask)
{
	int err;

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		err = FUNC2(indio_dev, val2);
		break;
	case IIO_CHAN_INFO_SAMP_FREQ:
		if (val2)
			return -EINVAL;
		FUNC0(&indio_dev->mlock);
		err = FUNC3(indio_dev, val);
		FUNC1(&indio_dev->mlock);
		return err;
	default:
		err = -EINVAL;
	}

	return err;
}