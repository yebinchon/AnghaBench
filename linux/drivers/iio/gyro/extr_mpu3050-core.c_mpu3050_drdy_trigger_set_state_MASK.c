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
struct mpu3050 {int hw_irq_trigger; int pending_fifo_footer; int /*<<< orphan*/  map; scalar_t__ irq_opendrain; scalar_t__ irq_latch; scalar_t__ irq_actl; int /*<<< orphan*/  dev; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPU3050_FIFO_EN ; 
 unsigned int MPU3050_FIFO_EN_FOOTER ; 
 unsigned int MPU3050_FIFO_EN_GYRO_XOUT ; 
 unsigned int MPU3050_FIFO_EN_GYRO_YOUT ; 
 unsigned int MPU3050_FIFO_EN_GYRO_ZOUT ; 
 unsigned int MPU3050_FIFO_EN_TEMP_OUT ; 
 unsigned int MPU3050_INT_ACTL ; 
 int /*<<< orphan*/  MPU3050_INT_CFG ; 
 unsigned int MPU3050_INT_LATCH_EN ; 
 unsigned int MPU3050_INT_OPEN ; 
 unsigned int MPU3050_INT_RAW_RDY_EN ; 
 int /*<<< orphan*/  MPU3050_INT_STATUS ; 
 int /*<<< orphan*/  MPU3050_USR_CTRL ; 
 unsigned int MPU3050_USR_CTRL_FIFO_EN ; 
 unsigned int MPU3050_USR_CTRL_FIFO_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mpu3050* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int FUNC3 (struct mpu3050*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct iio_trigger *trig,
					  bool enable)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct mpu3050 *mpu3050 = FUNC1(indio_dev);
	unsigned int val;
	int ret;

	/* Disabling trigger: disable interrupt and return */
	if (!enable) {
		/* Disable all interrupts */
		ret = FUNC9(mpu3050->map,
				   MPU3050_INT_CFG,
				   0);
		if (ret)
			FUNC0(mpu3050->dev, "error disabling IRQ\n");

		/* Clear IRQ flag */
		ret = FUNC7(mpu3050->map, MPU3050_INT_STATUS, &val);
		if (ret)
			FUNC0(mpu3050->dev, "error clearing IRQ status\n");

		/* Disable all things in the FIFO and reset it */
		ret = FUNC9(mpu3050->map, MPU3050_FIFO_EN, 0);
		if (ret)
			FUNC0(mpu3050->dev, "error disabling FIFO\n");

		ret = FUNC9(mpu3050->map, MPU3050_USR_CTRL,
				   MPU3050_USR_CTRL_FIFO_RST);
		if (ret)
			FUNC0(mpu3050->dev, "error resetting FIFO\n");

		FUNC5(mpu3050->dev);
		FUNC6(mpu3050->dev);
		mpu3050->hw_irq_trigger = false;

		return 0;
	} else {
		/* Else we're enabling the trigger from this point */
		FUNC4(mpu3050->dev);
		mpu3050->hw_irq_trigger = true;

		/* Disable all things in the FIFO */
		ret = FUNC9(mpu3050->map, MPU3050_FIFO_EN, 0);
		if (ret)
			return ret;

		/* Reset and enable the FIFO */
		ret = FUNC8(mpu3050->map, MPU3050_USR_CTRL,
					 MPU3050_USR_CTRL_FIFO_EN |
					 MPU3050_USR_CTRL_FIFO_RST,
					 MPU3050_USR_CTRL_FIFO_EN |
					 MPU3050_USR_CTRL_FIFO_RST);
		if (ret)
			return ret;

		mpu3050->pending_fifo_footer = false;

		/* Turn on the FIFO for temp+X+Y+Z */
		ret = FUNC9(mpu3050->map, MPU3050_FIFO_EN,
				   MPU3050_FIFO_EN_TEMP_OUT |
				   MPU3050_FIFO_EN_GYRO_XOUT |
				   MPU3050_FIFO_EN_GYRO_YOUT |
				   MPU3050_FIFO_EN_GYRO_ZOUT |
				   MPU3050_FIFO_EN_FOOTER);
		if (ret)
			return ret;

		/* Configure the sample engine */
		ret = FUNC3(mpu3050);
		if (ret)
			return ret;

		/* Clear IRQ flag */
		ret = FUNC7(mpu3050->map, MPU3050_INT_STATUS, &val);
		if (ret)
			FUNC0(mpu3050->dev, "error clearing IRQ status\n");

		/* Give us interrupts whenever there is new data ready */
		val = MPU3050_INT_RAW_RDY_EN;

		if (mpu3050->irq_actl)
			val |= MPU3050_INT_ACTL;
		if (mpu3050->irq_latch)
			val |= MPU3050_INT_LATCH_EN;
		if (mpu3050->irq_opendrain)
			val |= MPU3050_INT_OPEN;

		ret = FUNC9(mpu3050->map, MPU3050_INT_CFG, val);
		if (ret)
			return ret;
	}

	return 0;
}