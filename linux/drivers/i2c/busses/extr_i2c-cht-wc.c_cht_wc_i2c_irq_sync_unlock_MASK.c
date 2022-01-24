#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct cht_wc_i2c_adap {scalar_t__ irq_mask; scalar_t__ old_irq_mask; int /*<<< orphan*/  irqchip_lock; TYPE_1__ adapter; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_EXTCHGRIRQ_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct cht_wc_i2c_adap* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct cht_wc_i2c_adap *adap = FUNC1(data);
	int ret;

	if (adap->irq_mask != adap->old_irq_mask) {
		ret = FUNC3(adap->regmap, CHT_WC_EXTCHGRIRQ_MSK,
				   adap->irq_mask);
		if (ret == 0)
			adap->old_irq_mask = adap->irq_mask;
		else
			FUNC0(&adap->adapter.dev, "Error writing EXTCHGRIRQ_MSK\n");
	}

	FUNC2(&adap->irqchip_lock);
}