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
struct iio_chan_spec {int type; size_t scan_index; } ;
struct adis {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  IIO_ACCEL 129 
 long IIO_CHAN_INFO_CALIBBIAS ; 
#define  IIO_INCLI 128 
 int /*<<< orphan*/ * adis16201_addresses ; 
 int FUNC1 (struct adis*,int /*<<< orphan*/ ,int) ; 
 struct adis* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan,
			       int val,
			       int val2,
			       long mask)
{
	struct adis *st = FUNC2(indio_dev);
	int m;

	if (mask != IIO_CHAN_INFO_CALIBBIAS)
		return -EINVAL;

	switch (chan->type) {
	case IIO_ACCEL:
		m = FUNC0(11, 0);
		break;
	case IIO_INCLI:
		m = FUNC0(8, 0);
		break;
	default:
		return -EINVAL;
	}

	return FUNC1(st, adis16201_addresses[chan->scan_index],
				 val & m);
}