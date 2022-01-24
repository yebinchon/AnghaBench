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
struct icu_chip_data {int virq_base; int conf_mask; int conf_enable; scalar_t__ reg_mask; } ;

/* Variables and functions */
 struct icu_chip_data* icu_data ; 
 scalar_t__ mmp_icu_base ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	struct irq_domain *domain = d->domain;
	struct icu_chip_data *data = (struct icu_chip_data *)domain->host_data;
	int hwirq;
	u32 r;

	hwirq = d->irq - data->virq_base;
	if (data == &icu_data[0]) {
		r = FUNC0(mmp_icu_base + (hwirq << 2));
		r &= ~data->conf_mask;
		r |= data->conf_enable;
		FUNC1(r, mmp_icu_base + (hwirq << 2));
	} else {
		r = FUNC0(data->reg_mask) & ~(1 << hwirq);
		FUNC1(r, data->reg_mask);
	}
}