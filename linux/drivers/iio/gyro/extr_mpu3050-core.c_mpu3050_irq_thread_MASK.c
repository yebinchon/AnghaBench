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
struct mpu3050 {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MPU3050_INT_STATUS ; 
 unsigned int MPU3050_INT_STATUS_RAW_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mpu3050* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *p)
{
	struct iio_trigger *trig = p;
	struct iio_dev *indio_dev = FUNC2(trig);
	struct mpu3050 *mpu3050 = FUNC1(indio_dev);
	unsigned int val;
	int ret;

	/* ACK IRQ and check if it was from us */
	ret = FUNC4(mpu3050->map, MPU3050_INT_STATUS, &val);
	if (ret) {
		FUNC0(mpu3050->dev, "error reading IRQ status\n");
		return IRQ_HANDLED;
	}
	if (!(val & MPU3050_INT_STATUS_RAW_RDY))
		return IRQ_NONE;

	FUNC3(p);

	return IRQ_HANDLED;
}