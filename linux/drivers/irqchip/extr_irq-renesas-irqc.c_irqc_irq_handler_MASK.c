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
struct irqc_priv {int /*<<< orphan*/  irq_domain; scalar_t__ iomem; } ;
struct irqc_irq {int /*<<< orphan*/  hw_irq; struct irqc_priv* p; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DETECT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct irqc_irq*,char*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct irqc_irq *i = dev_id;
	struct irqc_priv *p = i->p;
	u32 bit = FUNC0(i->hw_irq);

	FUNC5(i, "demux1");

	if (FUNC2(p->iomem + DETECT_STATUS) & bit) {
		FUNC3(bit, p->iomem + DETECT_STATUS);
		FUNC5(i, "demux2");
		FUNC1(FUNC4(p->irq_domain, i->hw_irq));
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}