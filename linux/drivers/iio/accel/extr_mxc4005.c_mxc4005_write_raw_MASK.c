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
struct mxc4005_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_SCALE 128 
 struct mxc4005_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct mxc4005_data*,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)
{
	struct mxc4005_data *data = FUNC0(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_SCALE:
		if (val != 0)
			return -EINVAL;

		return FUNC1(data, val2);
	default:
		return -EINVAL;
	}
}