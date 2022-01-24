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
typedef  int u8 ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct bmi160_data {int /*<<< orphan*/  regmap; } ;
typedef  enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;

/* Variables and functions */
 int BMI160_ACTIVE_HIGH ; 
 int BMI160_EDGE_TRIGGERED ; 
 int /*<<< orphan*/  BMI160_NORMAL_WRITE_USLEEP ; 
 int EINVAL ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_HIGH ; 
 int IRQF_TRIGGER_LOW ; 
 int IRQF_TRIGGER_RISING ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct bmi160_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev, int irq_type,
				    enum bmi160_int_pin pin)
{
	bool open_drain;
	u8 irq_mask;
	struct bmi160_data *data = FUNC2(indio_dev);
	struct device *dev = FUNC4(data->regmap);

	/* Level-triggered, active-low is the default if we set all zeroes. */
	if (irq_type == IRQF_TRIGGER_RISING)
		irq_mask = BMI160_ACTIVE_HIGH | BMI160_EDGE_TRIGGERED;
	else if (irq_type == IRQF_TRIGGER_FALLING)
		irq_mask = BMI160_EDGE_TRIGGERED;
	else if (irq_type == IRQF_TRIGGER_HIGH)
		irq_mask = BMI160_ACTIVE_HIGH;
	else if (irq_type == IRQF_TRIGGER_LOW)
		irq_mask = 0;
	else {
		FUNC1(&indio_dev->dev,
			"Invalid interrupt type 0x%x specified\n", irq_type);
		return -EINVAL;
	}

	open_drain = FUNC3(dev->of_node, "drive-open-drain");

	return FUNC0(data->regmap, pin, open_drain, irq_mask,
				 BMI160_NORMAL_WRITE_USLEEP);
}