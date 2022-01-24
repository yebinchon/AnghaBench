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
struct isl29018_chip {int calibscale; int ucalibscale; int /*<<< orphan*/  lock; scalar_t__ suspended; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBSCALE 130 
#define  IIO_CHAN_INFO_INT_TIME 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  IIO_LIGHT ; 
 struct isl29018_chip* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct isl29018_chip*,int) ; 
 int FUNC2 (struct isl29018_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int val,
			      int val2,
			      long mask)
{
	struct isl29018_chip *chip = FUNC0(indio_dev);
	int ret = -EINVAL;

	FUNC3(&chip->lock);
	if (chip->suspended) {
		ret = -EBUSY;
		goto write_done;
	}
	switch (mask) {
	case IIO_CHAN_INFO_CALIBSCALE:
		if (chan->type == IIO_LIGHT) {
			chip->calibscale = val;
			chip->ucalibscale = val2;
			ret = 0;
		}
		break;
	case IIO_CHAN_INFO_INT_TIME:
		if (chan->type == IIO_LIGHT && !val)
			ret = FUNC1(chip, val2);
		break;
	case IIO_CHAN_INFO_SCALE:
		if (chan->type == IIO_LIGHT)
			ret = FUNC2(chip, val, val2);
		break;
	default:
		break;
	}

write_done:
	FUNC4(&chip->lock);

	return ret;
}