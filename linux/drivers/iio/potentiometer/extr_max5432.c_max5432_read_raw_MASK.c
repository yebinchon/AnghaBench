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
struct max5432_data {int ohm; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 long IIO_CHAN_INFO_SCALE ; 
 int IIO_VAL_FRACTIONAL ; 
 int INT_MAX ; 
 int MAX5432_MAX_POS ; 
 struct max5432_data* FUNC0 (struct iio_dev*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int *val, int *val2, long mask)
{
	struct max5432_data *data = FUNC0(indio_dev);

	if (mask != IIO_CHAN_INFO_SCALE)
		return -EINVAL;

	if (FUNC1(data->ohm > INT_MAX))
		return -ERANGE;

	*val = data->ohm;
	*val2 = MAX5432_MAX_POS;

	return IIO_VAL_FRACTIONAL;
}