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
struct mpu3050 {scalar_t__ irq; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct mpu3050*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct mpu3050* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpu3050*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

int FUNC9(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct mpu3050 *mpu3050 = FUNC3(indio_dev);

	FUNC7(dev);
	FUNC8(dev);
	FUNC6(dev);
	FUNC4(indio_dev);
	if (mpu3050->irq)
		FUNC1(mpu3050->irq, mpu3050);
	FUNC2(indio_dev);
	FUNC5(mpu3050);

	return 0;
}