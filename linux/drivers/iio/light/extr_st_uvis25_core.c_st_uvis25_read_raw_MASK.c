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
struct st_uvis25_hw {int /*<<< orphan*/  irq; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_PROCESSED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct st_uvis25_hw* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct st_uvis25_hw*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *iio_dev,
			      struct iio_chan_spec const *ch,
			      int *val, int *val2, long mask)
{
	int ret;

	ret = FUNC2(iio_dev);
	if (ret)
		return ret;

	switch (mask) {
	case IIO_CHAN_INFO_PROCESSED: {
		struct st_uvis25_hw *hw = FUNC4(iio_dev);

		/*
		 * mask irq line during oneshot read since the sensor
		 * does not export the capability to disable data-ready line
		 * in the register map and it is enabled by default.
		 * If the line is unmasked during read_raw() it will be set
		 * active and never reset since the trigger is disabled
		 */
		if (hw->irq > 0)
			FUNC0(hw->irq);
		ret = FUNC5(hw, ch->address, val);
		if (hw->irq > 0)
			FUNC1(hw->irq);
		break;
	}
	default:
		ret = -EINVAL;
		break;
	}

	FUNC3(iio_dev);

	return ret;
}