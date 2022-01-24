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
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct bmg160_data {int /*<<< orphan*/  regmap; scalar_t__ dready_trigger_on; } ;

/* Variables and functions */
 int BMG160_INT_MODE_LATCH_INT ; 
 int BMG160_INT_MODE_LATCH_RESET ; 
 int /*<<< orphan*/  BMG160_REG_INT_RST_LATCH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct bmg160_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct iio_trigger *trig)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct bmg160_data *data = FUNC1(indio_dev);
	struct device *dev = FUNC3(data->regmap);
	int ret;

	/* new data interrupts don't need ack */
	if (data->dready_trigger_on)
		return 0;

	/* Set latched mode interrupt and clear any latched interrupt */
	ret = FUNC4(data->regmap, BMG160_REG_INT_RST_LATCH,
			   BMG160_INT_MODE_LATCH_INT |
			   BMG160_INT_MODE_LATCH_RESET);
	if (ret < 0) {
		FUNC0(dev, "Error writing reg_rst_latch\n");
		return ret;
	}

	return 0;
}