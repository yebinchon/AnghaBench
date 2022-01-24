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
struct tsl2563_chip {void* calib1; void* calib0; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ channel2; } ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_CALIBSCALE ; 
 scalar_t__ IIO_MOD_LIGHT_BOTH ; 
 scalar_t__ IIO_MOD_LIGHT_IR ; 
 struct tsl2563_chip* FUNC0 (struct iio_dev*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			       struct iio_chan_spec const *chan,
			       int val,
			       int val2,
			       long mask)
{
	struct tsl2563_chip *chip = FUNC0(indio_dev);

	if (mask != IIO_CHAN_INFO_CALIBSCALE)
		return -EINVAL;
	if (chan->channel2 == IIO_MOD_LIGHT_BOTH)
		chip->calib0 = FUNC1(val);
	else if (chan->channel2 == IIO_MOD_LIGHT_IR)
		chip->calib1 = FUNC1(val);
	else
		return -EINVAL;

	return 0;
}