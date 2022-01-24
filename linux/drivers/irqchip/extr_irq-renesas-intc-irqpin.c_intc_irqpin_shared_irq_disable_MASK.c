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
struct irq_data {int dummy; } ;
struct intc_irqpin_priv {int /*<<< orphan*/  shared_irq_mask; int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INTC_IRQPIN_REG_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct intc_irqpin_priv*,int /*<<< orphan*/ ,int) ; 
 struct intc_irqpin_priv* FUNC3 (struct irq_data*) ; 
 int FUNC4 (struct irq_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct intc_irqpin_priv *p = FUNC3(d);
	int hw_irq = FUNC4(d);

	FUNC1(&p->irq[hw_irq], "shared disable");
	FUNC2(p, INTC_IRQPIN_REG_MASK, hw_irq);

	p->shared_irq_mask |= FUNC0(hw_irq);
}