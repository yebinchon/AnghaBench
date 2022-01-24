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
struct iio_chan_spec {int dummy; } ;
struct gp2ap020a00f_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 long IIO_CHAN_INFO_RAW ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct gp2ap020a00f_data*,struct iio_chan_spec const*,int*) ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct gp2ap020a00f_data* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val, int *val2,
			   long mask)
{
	struct gp2ap020a00f_data *data = FUNC3(indio_dev);
	int err = -EINVAL;

	if (mask == IIO_CHAN_INFO_RAW) {
		err = FUNC1(indio_dev);
		if (err)
			return err;

		err = FUNC0(data, chan, val);
		FUNC2(indio_dev);
	}
	return err < 0 ? err : IIO_VAL_INT;
}