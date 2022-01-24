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
 int FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	int err;

	err = FUNC0(indio_dev);
	if (err < 0)
		return err;

	err = FUNC2(indio_dev, true);
	if (err < 0)
		goto st_magn_buffer_predisable;

	return 0;

st_magn_buffer_predisable:
	FUNC1(indio_dev);
	return err;
}