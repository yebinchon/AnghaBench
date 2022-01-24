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
struct intc_irqpin_priv {int dummy; } ;
struct intc_irqpin_irq {int /*<<< orphan*/  domain_irq; int /*<<< orphan*/  hw_irq; struct intc_irqpin_priv* p; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTC_IRQPIN_REG_SOURCE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intc_irqpin_irq*,char*) ; 
 unsigned long FUNC2 (struct intc_irqpin_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct intc_irqpin_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intc_irqpin_priv*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct intc_irqpin_irq *i = dev_id;
	struct intc_irqpin_priv *p = i->p;
	unsigned long bit;

	FUNC1(i, "demux1");
	bit = FUNC2(p, INTC_IRQPIN_REG_SOURCE, i->hw_irq);

	if (FUNC3(p, INTC_IRQPIN_REG_SOURCE) & bit) {
		FUNC4(p, INTC_IRQPIN_REG_SOURCE, ~bit);
		FUNC1(i, "demux2");
		FUNC0(i->domain_irq);
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}