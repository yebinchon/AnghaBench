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
struct bmc150_accel_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; scalar_t__ ev_enable_state; scalar_t__ fifo_mode; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_ACCEL_FIFO_LENGTH ; 
 int BMC150_ACCEL_INT_MODE_LATCH_INT ; 
 int BMC150_ACCEL_INT_MODE_LATCH_RESET ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_INT_RST_LATCH ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct bmc150_accel_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct bmc150_accel_data *data = FUNC3(indio_dev);
	struct device *dev = FUNC6(data->regmap);
	bool ack = false;
	int ret;

	FUNC4(&data->mutex);

	if (data->fifo_mode) {
		ret = FUNC0(indio_dev,
						BMC150_ACCEL_FIFO_LENGTH, true);
		if (ret > 0)
			ack = true;
	}

	if (data->ev_enable_state) {
		ret = FUNC1(indio_dev);
		if (ret > 0)
			ack = true;
	}

	if (ack) {
		ret = FUNC7(data->regmap, BMC150_ACCEL_REG_INT_RST_LATCH,
				   BMC150_ACCEL_INT_MODE_LATCH_INT |
				   BMC150_ACCEL_INT_MODE_LATCH_RESET);
		if (ret)
			FUNC2(dev, "Error writing reg_int_rst_latch\n");

		ret = IRQ_HANDLED;
	} else {
		ret = IRQ_NONE;
	}

	FUNC5(&data->mutex);

	return ret;
}