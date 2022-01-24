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
 struct iio_dev* FUNC0 (struct iio_trigger*) ; 
 int FUNC1 (struct iio_dev*,int) ; 

int FUNC2(struct iio_trigger *trig, bool state)
{
	struct iio_dev *indio_dev = FUNC0(trig);

	return FUNC1(indio_dev, state);
}