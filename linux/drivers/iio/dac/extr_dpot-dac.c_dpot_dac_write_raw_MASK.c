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
struct dpot_dac {int /*<<< orphan*/  dpot; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 struct dpot_dac* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int val, int val2, long mask)
{
	struct dpot_dac *dac = FUNC0(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		return FUNC1(dac->dpot, val);
	}

	return -EINVAL;
}