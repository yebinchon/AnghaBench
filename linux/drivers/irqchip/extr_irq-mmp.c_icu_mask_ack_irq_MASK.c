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
typedef  int u32 ;
struct irq_domain {scalar_t__ host_data; } ;
struct irq_data {int irq; struct irq_domain* domain; } ;
struct icu_chip_data {int virq_base; int conf_mask; int conf_disable; scalar_t__ clr_mfp_irq_base; int clr_mfp_hwirq; scalar_t__ reg_mask; } ;

/* Variables and functions */
 struct icu_chip_data* icu_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ mmp_icu_base ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct irq_domain *domain = d->domain;
	struct icu_chip_data *data = (struct icu_chip_data *)domain->host_data;
	int hwirq;
	u32 r;

	hwirq = d->irq - data->virq_base;
	if (data == &icu_data[0]) {
		r = FUNC1(mmp_icu_base + (hwirq << 2));
		r &= ~data->conf_mask;
		r |= data->conf_disable;
		FUNC2(r, mmp_icu_base + (hwirq << 2));
	} else {
#ifdef CONFIG_CPU_MMP2
		if ((data->virq_base == data->clr_mfp_irq_base)
			&& (hwirq == data->clr_mfp_hwirq))
			mmp2_clear_pmic_int();
#endif
		r = FUNC1(data->reg_mask) | (1 << hwirq);
		FUNC2(r, data->reg_mask);
	}
}