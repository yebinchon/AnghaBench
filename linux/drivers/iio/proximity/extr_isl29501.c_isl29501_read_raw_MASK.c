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
struct isl29501_private {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_CALIBBIAS 132 
#define  IIO_CHAN_INFO_INT_TIME 131 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 struct isl29501_private* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct isl29501_private*,struct iio_chan_spec const*,int*) ; 
 int FUNC2 (struct isl29501_private*,int*,int*) ; 
 int FUNC3 (struct isl29501_private*,int*,int*) ; 
 int FUNC4 (struct isl29501_private*,struct iio_chan_spec const*,int*) ; 
 int FUNC5 (struct isl29501_private*,struct iio_chan_spec const*,int*,int*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan, int *val,
			     int *val2, long mask)
{
	struct isl29501_private *isl29501 = FUNC0(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		return FUNC4(isl29501, chan, val);
	case IIO_CHAN_INFO_SCALE:
		return FUNC5(isl29501, chan, val, val2);
	case IIO_CHAN_INFO_INT_TIME:
		return FUNC3(isl29501, val, val2);
	case IIO_CHAN_INFO_SAMP_FREQ:
		return FUNC2(isl29501, val, val2);
	case IIO_CHAN_INFO_CALIBBIAS:
		return FUNC1(isl29501, chan, val);
	default:
		return -EINVAL;
	}
}