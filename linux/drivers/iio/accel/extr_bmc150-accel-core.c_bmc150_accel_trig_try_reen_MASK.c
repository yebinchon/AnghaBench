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
struct iio_trigger {int dummy; } ;
struct device {int dummy; } ;
struct bmc150_accel_trigger {struct bmc150_accel_data* data; } ;
struct bmc150_accel_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; struct bmc150_accel_trigger* triggers; } ;

/* Variables and functions */
 int BMC150_ACCEL_INT_MODE_LATCH_INT ; 
 int BMC150_ACCEL_INT_MODE_LATCH_RESET ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_INT_RST_LATCH ; 
 size_t BMC150_ACCEL_TRIGGER_DATA_READY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct bmc150_accel_trigger* FUNC1 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct iio_trigger *trig)
{
	struct bmc150_accel_trigger *t = FUNC1(trig);
	struct bmc150_accel_data *data = t->data;
	struct device *dev = FUNC4(data->regmap);
	int ret;

	/* new data interrupts don't need ack */
	if (t == &t->data->triggers[BMC150_ACCEL_TRIGGER_DATA_READY])
		return 0;

	FUNC2(&data->mutex);
	/* clear any latched interrupt */
	ret = FUNC5(data->regmap, BMC150_ACCEL_REG_INT_RST_LATCH,
			   BMC150_ACCEL_INT_MODE_LATCH_INT |
			   BMC150_ACCEL_INT_MODE_LATCH_RESET);
	FUNC3(&data->mutex);
	if (ret < 0) {
		FUNC0(dev, "Error writing reg_int_rst_latch\n");
		return ret;
	}

	return 0;
}