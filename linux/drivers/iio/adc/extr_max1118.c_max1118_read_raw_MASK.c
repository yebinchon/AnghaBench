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
struct max1118 {int /*<<< orphan*/  spi; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 struct max1118* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int *val, int *val2, long mask)
{
	struct max1118 *adc = FUNC0(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC3(&adc->lock);
		*val = FUNC2(adc->spi, chan->channel);
		FUNC4(&adc->lock);
		if (*val < 0)
			return *val;

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = FUNC1(adc->spi);
		if (*val < 0)
			return *val;
		*val2 = 8;

		return IIO_VAL_FRACTIONAL_LOG2;
	}

	return -EINVAL;
}