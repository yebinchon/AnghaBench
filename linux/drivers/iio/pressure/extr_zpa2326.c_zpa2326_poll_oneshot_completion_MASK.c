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
struct zpa2326_private {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 unsigned long ZPA2326_CONVERSION_JIFFIES ; 
 unsigned int ZPA2326_CTRL_REG0_ONE_SHOT ; 
 int /*<<< orphan*/  ZPA2326_CTRL_REG0_REG ; 
 unsigned int ZPA2326_STATUS_P_DA ; 
 int /*<<< orphan*/  ZPA2326_STATUS_REG ; 
 scalar_t__ FUNC0 (struct iio_dev const*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev const*,char*,int) ; 

__attribute__((used)) static int FUNC7(const struct iio_dev *indio_dev)
{
	unsigned long  tmout = jiffies + ZPA2326_CONVERSION_JIFFIES;
	struct regmap *regs = ((struct zpa2326_private *)
			       FUNC0(indio_dev))->regmap;
	unsigned int   val;
	int            err;

	FUNC5(indio_dev, "polling for one shot completion");

	/*
	 * At least, 100 ms is needed for the device to complete its one-shot
	 * cycle.
	 */
	if (FUNC1(100))
		return -ERESTARTSYS;

	/* Poll for conversion completion in hardware. */
	while (true) {
		err = FUNC2(regs, ZPA2326_CTRL_REG0_REG, &val);
		if (err < 0)
			goto err;

		if (!(val & ZPA2326_CTRL_REG0_ONE_SHOT))
			/* One-shot bit self clears at conversion end. */
			break;

		if (FUNC3(jiffies, tmout)) {
			/* Prevent from waiting forever : let's time out. */
			err = -ETIME;
			goto err;
		}

		FUNC4(10000, 20000);
	}

	/*
	 * In oneshot mode, pressure sample availability guarantees that
	 * temperature conversion has also completed : just check pressure
	 * status bit to keep things simple.
	 */
	err = FUNC2(regs, ZPA2326_STATUS_REG, &val);
	if (err < 0)
		goto err;

	if (!(val & ZPA2326_STATUS_P_DA)) {
		/* No sample available. */
		err = -ENODATA;
		goto err;
	}

	return 0;

err:
	FUNC6(indio_dev, "failed to poll one shot completion (%d)", err);

	return err;
}