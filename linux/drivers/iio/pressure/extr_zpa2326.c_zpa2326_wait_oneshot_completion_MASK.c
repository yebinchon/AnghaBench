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
struct zpa2326_private {int result; int /*<<< orphan*/  regmap; int /*<<< orphan*/  data_ready; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  ZPA2326_CONVERSION_JIFFIES ; 
 int /*<<< orphan*/  ZPA2326_INT_SOURCE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev const*,char*,...) ; 

__attribute__((used)) static int FUNC4(const struct iio_dev   *indio_dev,
					   struct zpa2326_private *private)
{
	unsigned int val;
	long     timeout;

	FUNC2(indio_dev, "waiting for one shot completion interrupt");

	timeout = FUNC1(
		&private->data_ready, ZPA2326_CONVERSION_JIFFIES);
	if (timeout > 0)
		/*
		 * Interrupt handler completed before timeout: return operation
		 * status.
		 */
		return private->result;

	/* Clear all interrupts just to be sure. */
	FUNC0(private->regmap, ZPA2326_INT_SOURCE_REG, &val);

	if (!timeout) {
		/* Timed out. */
		FUNC3(indio_dev, "no one shot interrupt occurred (%ld)",
			     timeout);
		return -ETIME;
	}

	FUNC3(indio_dev, "wait for one shot interrupt cancelled");
	return -ERESTARTSYS;
}