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
struct iio_chan_spec {int type; } ;
struct dps310_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int FUNC0 (struct dps310_data*,int*,int*,long) ; 
 int FUNC1 (struct dps310_data*,int*,int*,long) ; 
 struct dps310_data* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *iio,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2, long mask)
{
	struct dps310_data *data = FUNC2(iio);

	switch (chan->type) {
	case IIO_PRESSURE:
		return FUNC0(data, val, val2, mask);

	case IIO_TEMP:
		return FUNC1(data, val, val2, mask);

	default:
		return -EINVAL;
	}
}