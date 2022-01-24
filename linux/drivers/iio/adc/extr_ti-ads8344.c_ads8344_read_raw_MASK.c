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
struct iio_chan_spec {int /*<<< orphan*/  differential; int /*<<< orphan*/  scan_index; } ;
struct ads8344 {int /*<<< orphan*/  reg; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct ads8344*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ads8344* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *iio,
			    struct iio_chan_spec const *channel, int *value,
			    int *shift, long mask)
{
	struct ads8344 *adc = FUNC1(iio);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC2(&adc->lock);
		*value = FUNC0(adc, channel->scan_index,
						channel->differential);
		FUNC3(&adc->lock);
		if (*value < 0)
			return *value;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*value = FUNC4(adc->reg);
		if (*value < 0)
			return *value;

		/* convert regulator output voltage to mV */
		*value /= 1000;
		*shift = 16;

		return IIO_VAL_FRACTIONAL_LOG2;
	default:
		return -EINVAL;
	}
}