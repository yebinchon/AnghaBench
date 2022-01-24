#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mcp320x {int /*<<< orphan*/  lock; TYPE_1__* chip_info; int /*<<< orphan*/  reg; int /*<<< orphan*/  spi; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  differential; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {int driver_data; } ;
struct TYPE_3__ {int resolution; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 struct mcp320x* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct mcp320x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *channel, int *val,
			    int *val2, long mask)
{
	struct mcp320x *adc = FUNC0(indio_dev);
	int ret = -EINVAL;
	int device_index = 0;

	FUNC2(&adc->lock);

	device_index = FUNC5(adc->spi)->driver_data;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC1(adc, channel->address,
			channel->differential, device_index, val);
		if (ret < 0)
			goto out;

		ret = IIO_VAL_INT;
		break;

	case IIO_CHAN_INFO_SCALE:
		ret = FUNC4(adc->reg);
		if (ret < 0)
			goto out;

		/* convert regulator output voltage to mV */
		*val = ret / 1000;
		*val2 = adc->chip_info->resolution;
		ret = IIO_VAL_FRACTIONAL_LOG2;
		break;
	}

out:
	FUNC3(&adc->lock);

	return ret;
}