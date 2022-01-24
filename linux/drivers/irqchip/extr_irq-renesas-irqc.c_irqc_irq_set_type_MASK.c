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
struct irqc_priv {scalar_t__ iomem; int /*<<< orphan*/ * irq; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 struct irqc_priv* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 unsigned char* irqc_sense ; 
 int FUNC5 (struct irq_data*) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d, unsigned int type)
{
	struct irqc_priv *p = FUNC3(d);
	int hw_irq = FUNC5(d);
	unsigned char value = irqc_sense[type & IRQ_TYPE_SENSE_MASK];
	u32 tmp;

	FUNC4(&p->irq[hw_irq], "sense");

	if (!value)
		return -EINVAL;

	tmp = FUNC1(p->iomem + FUNC0(hw_irq));
	tmp &= ~0x3f;
	tmp |= value;
	FUNC2(tmp, p->iomem + FUNC0(hw_irq));
	return 0;
}