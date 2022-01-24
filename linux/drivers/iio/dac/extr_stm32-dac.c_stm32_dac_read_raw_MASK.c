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
struct stm32_dac {TYPE_1__* common; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {int realbits; } ;
struct iio_chan_spec {TYPE_2__ scan_type; int /*<<< orphan*/  channel; } ;
struct TYPE_3__ {int vref_mv; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 struct stm32_dac* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct stm32_dac*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
			      struct iio_chan_spec const *chan,
			      int *val, int *val2, long mask)
{
	struct stm32_dac *dac = FUNC0(indio_dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		return FUNC1(dac, chan->channel, val);
	case IIO_CHAN_INFO_SCALE:
		*val = dac->common->vref_mv;
		*val2 = chan->scan_type.realbits;
		return IIO_VAL_FRACTIONAL_LOG2;
	default:
		return -EINVAL;
	}
}