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
struct device {int dummy; } ;
struct bmp280_data {int use_eoc; } ;

/* Variables and functions */
 unsigned long IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  bmp085_eoc_irq ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,char const*,struct bmp280_data*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				const char *name,
				int irq,
				struct bmp280_data *data)
{
	unsigned long irq_trig;
	int ret;

	irq_trig = FUNC3(FUNC2(irq));
	if (irq_trig != IRQF_TRIGGER_RISING) {
		FUNC0(dev, "non-rising trigger given for EOC interrupt, "
			"trying to enforce it\n");
		irq_trig = IRQF_TRIGGER_RISING;
	}
	ret = FUNC1(dev,
			irq,
			bmp085_eoc_irq,
			NULL,
			irq_trig,
			name,
			data);
	if (ret) {
		/* Bail out without IRQ but keep the driver in place */
		FUNC0(dev, "unable to request DRDY IRQ\n");
		return 0;
	}

	data->use_eoc = true;
	return 0;
}