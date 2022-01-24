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
struct ixp4xx_irq {scalar_t__ irqbase; scalar_t__ is_356; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IXP4XX_ICMR ; 
 scalar_t__ IXP4XX_ICMR2 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ixp4xx_irq* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct ixp4xx_irq *ixi = FUNC3(d);
	u32 val;

	if (ixi->is_356 && d->hwirq >= 32) {
		val = FUNC1(ixi->irqbase + IXP4XX_ICMR2);
		val |= FUNC0(d->hwirq - 32);
		FUNC2(val, ixi->irqbase + IXP4XX_ICMR2);
	} else {
		val = FUNC1(ixi->irqbase + IXP4XX_ICMR);
		val |= FUNC0(d->hwirq);
		FUNC2(val, ixi->irqbase + IXP4XX_ICMR);
	}
}