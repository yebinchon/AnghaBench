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
struct pdc_intc_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_route; } ;
struct irq_data {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDC_IRQ_ROUTE ; 
 struct pdc_intc_priv* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct pdc_intc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct pdc_intc_priv *priv = FUNC0(data);

	FUNC2(&priv->lock);
	priv->irq_route |= data->mask;
	FUNC1(priv, PDC_IRQ_ROUTE, priv->irq_route);
	FUNC3(&priv->lock);
}