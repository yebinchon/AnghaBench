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
typedef  int /*<<< orphan*/  u8 ;
struct ti_dac_chip {int val; int resolution; int /*<<< orphan*/  lock; int /*<<< orphan*/  powerdown; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 128 
 struct ti_dac_chip* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ti_dac_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_dac_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
			    struct iio_chan_spec const *chan,
			    int val, int val2, long mask)
{
	struct ti_dac_chip *ti_dac = FUNC0(indio_dev);
	u8 power = FUNC4(ti_dac, ti_dac->powerdown);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		if (ti_dac->val == val)
			return 0;

		if (val >= (1 << ti_dac->resolution) || val < 0)
			return -EINVAL;

		if (ti_dac->powerdown)
			return -EBUSY;

		FUNC1(&ti_dac->lock);
		ret = FUNC3(ti_dac, power, val);
		if (!ret)
			ti_dac->val = val;
		FUNC2(&ti_dac->lock);
		break;

	default:
		ret = -EINVAL;
	}

	return ret;
}