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

/* Variables and functions */
 int IIO_VAL_INT ; 
 int FUNC0 (struct iio_dev*,int,int*) ; 

__attribute__((used)) static int FUNC1(struct iio_dev *iio_dev, int *val)
{
	int ret, min, max;

	ret = FUNC0(iio_dev, 8, &min);
	if (ret != IIO_VAL_INT)
		return ret;

	ret = FUNC0(iio_dev, 9, &max);
	if (ret != IIO_VAL_INT)
		return ret;

	*val = max - min;

	return IIO_VAL_INT;
}