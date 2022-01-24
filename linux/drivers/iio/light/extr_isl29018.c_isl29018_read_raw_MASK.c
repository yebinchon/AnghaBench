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
struct TYPE_2__ {int scale; int uscale; } ;
struct isl29018_chip {size_t type; size_t int_time; int calibscale; int ucalibscale; int /*<<< orphan*/  lock; TYPE_1__ scale; int /*<<< orphan*/  prox_scheme; scalar_t__ suspended; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBSCALE 135 
#define  IIO_CHAN_INFO_INT_TIME 134 
#define  IIO_CHAN_INFO_PROCESSED 133 
#define  IIO_CHAN_INFO_RAW 132 
#define  IIO_CHAN_INFO_SCALE 131 
#define  IIO_INTENSITY 130 
#define  IIO_LIGHT 129 
#define  IIO_PROXIMITY 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 struct isl29018_chip* FUNC0 (struct iio_dev*) ; 
 int** isl29018_int_utimes ; 
 int FUNC1 (struct isl29018_chip*,int*) ; 
 int FUNC2 (struct isl29018_chip*,int*) ; 
 int FUNC3 (struct isl29018_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int *val,
			     int *val2,
			     long mask)
{
	int ret = -EINVAL;
	struct isl29018_chip *chip = FUNC0(indio_dev);

	FUNC4(&chip->lock);
	if (chip->suspended) {
		ret = -EBUSY;
		goto read_done;
	}
	switch (mask) {
	case IIO_CHAN_INFO_RAW:
	case IIO_CHAN_INFO_PROCESSED:
		switch (chan->type) {
		case IIO_LIGHT:
			ret = FUNC2(chip, val);
			break;
		case IIO_INTENSITY:
			ret = FUNC1(chip, val);
			break;
		case IIO_PROXIMITY:
			ret = FUNC3(chip,
							 chip->prox_scheme,
							 val);
			break;
		default:
			break;
		}
		if (!ret)
			ret = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_INT_TIME:
		if (chan->type == IIO_LIGHT) {
			*val = 0;
			*val2 = isl29018_int_utimes[chip->type][chip->int_time];
			ret = IIO_VAL_INT_PLUS_MICRO;
		}
		break;
	case IIO_CHAN_INFO_SCALE:
		if (chan->type == IIO_LIGHT) {
			*val = chip->scale.scale;
			*val2 = chip->scale.uscale;
			ret = IIO_VAL_INT_PLUS_MICRO;
		}
		break;
	case IIO_CHAN_INFO_CALIBSCALE:
		if (chan->type == IIO_LIGHT) {
			*val = chip->calibscale;
			*val2 = chip->ucalibscale;
			ret = IIO_VAL_INT_PLUS_MICRO;
		}
		break;
	default:
		break;
	}

read_done:
	FUNC5(&chip->lock);

	return ret;
}