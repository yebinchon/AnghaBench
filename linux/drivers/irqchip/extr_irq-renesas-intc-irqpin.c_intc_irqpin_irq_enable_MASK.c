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
struct intc_irqpin_priv {int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTC_IRQPIN_REG_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct intc_irqpin_priv*,int /*<<< orphan*/ ,int) ; 
 struct intc_irqpin_priv* FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct intc_irqpin_priv *p = FUNC2(d);
	int hw_irq = FUNC3(d);

	FUNC0(&p->irq[hw_irq], "enable");
	FUNC1(p, INTC_IRQPIN_REG_CLEAR, hw_irq);
}