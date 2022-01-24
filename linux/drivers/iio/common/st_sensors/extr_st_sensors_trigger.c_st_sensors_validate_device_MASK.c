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
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct iio_dev* FUNC0 (struct iio_trigger*) ; 

int FUNC1(struct iio_trigger *trig,
			       struct iio_dev *indio_dev)
{
	struct iio_dev *indio = FUNC0(trig);

	if (indio != indio_dev)
		return -EINVAL;

	return 0;
}