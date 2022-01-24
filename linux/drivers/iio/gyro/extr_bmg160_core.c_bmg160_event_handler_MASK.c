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
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct bmg160_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dready_trigger_on; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int BMG160_ANY_MOTION_BIT_X ; 
 unsigned int BMG160_ANY_MOTION_BIT_Y ; 
 unsigned int BMG160_ANY_MOTION_BIT_Z ; 
 int BMG160_INT_MODE_LATCH_INT ; 
 int BMG160_INT_MODE_LATCH_RESET ; 
 int /*<<< orphan*/  BMG160_REG_INT_RST_LATCH ; 
 int /*<<< orphan*/  BMG160_REG_INT_STATUS_2 ; 
 int /*<<< orphan*/  IIO_ANGL_VEL ; 
 int IIO_EV_DIR_FALLING ; 
 int IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_ROC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IIO_MOD_X ; 
 int /*<<< orphan*/  IIO_MOD_Y ; 
 int /*<<< orphan*/  IIO_MOD_Z ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct bmg160_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct bmg160_data *data = FUNC3(indio_dev);
	struct device *dev = FUNC5(data->regmap);
	int ret;
	int dir;
	unsigned int val;

	ret = FUNC6(data->regmap, BMG160_REG_INT_STATUS_2, &val);
	if (ret < 0) {
		FUNC1(dev, "Error reading reg_int_status2\n");
		goto ack_intr_status;
	}

	if (val & 0x08)
		dir = IIO_EV_DIR_RISING;
	else
		dir = IIO_EV_DIR_FALLING;

	if (val & BMG160_ANY_MOTION_BIT_X)
		FUNC4(indio_dev, FUNC0(IIO_ANGL_VEL,
							     0,
							     IIO_MOD_X,
							     IIO_EV_TYPE_ROC,
							     dir),
			       FUNC2(indio_dev));
	if (val & BMG160_ANY_MOTION_BIT_Y)
		FUNC4(indio_dev, FUNC0(IIO_ANGL_VEL,
							     0,
							     IIO_MOD_Y,
							     IIO_EV_TYPE_ROC,
							     dir),
			       FUNC2(indio_dev));
	if (val & BMG160_ANY_MOTION_BIT_Z)
		FUNC4(indio_dev, FUNC0(IIO_ANGL_VEL,
							     0,
							     IIO_MOD_Z,
							     IIO_EV_TYPE_ROC,
							     dir),
			       FUNC2(indio_dev));

ack_intr_status:
	if (!data->dready_trigger_on) {
		ret = FUNC7(data->regmap, BMG160_REG_INT_RST_LATCH,
				   BMG160_INT_MODE_LATCH_INT |
				   BMG160_INT_MODE_LATCH_RESET);
		if (ret < 0)
			FUNC1(dev, "Error writing reg_rst_latch\n");
	}

	return IRQ_HANDLED;
}