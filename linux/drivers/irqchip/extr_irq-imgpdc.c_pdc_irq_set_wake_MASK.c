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
struct pdc_intc_priv {unsigned int irq_route; unsigned int syswake_irq; unsigned int* perip_irqs; int /*<<< orphan*/  lock; } ;
struct irq_data {int hwirq; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  PDC_IRQ_ROUTE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 struct pdc_intc_priv* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct pdc_intc_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct irq_data *data, unsigned int on)
{
	struct pdc_intc_priv *priv = FUNC2(data);
	irq_hw_number_t hw = data->hwirq;
	unsigned int mask = (1 << 16) << hw;
	unsigned int dst_irq;

	FUNC4(&priv->lock);
	if (on)
		priv->irq_route |= mask;
	else
		priv->irq_route &= ~mask;
	FUNC3(priv, PDC_IRQ_ROUTE, priv->irq_route);
	FUNC5(&priv->lock);

	/* control the destination IRQ wakeup too for standby mode */
	if (FUNC0(hw))
		dst_irq = priv->syswake_irq;
	else
		dst_irq = priv->perip_irqs[hw];
	FUNC1(dst_irq, on);

	return 0;
}