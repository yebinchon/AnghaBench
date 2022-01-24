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
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
typedef  enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct iio_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct irq_data* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev, int irq,
			    enum bmi160_int_pin pin)
{
	struct irq_data *desc;
	u32 irq_type;
	int ret;

	desc = FUNC3(irq);
	if (!desc) {
		FUNC2(&indio_dev->dev, "Could not find IRQ %d\n", irq);
		return -EINVAL;
	}

	irq_type = FUNC4(desc);

	ret = FUNC0(indio_dev, irq_type, pin);
	if (ret)
		return ret;

	return FUNC1(indio_dev, irq, irq_type);
}