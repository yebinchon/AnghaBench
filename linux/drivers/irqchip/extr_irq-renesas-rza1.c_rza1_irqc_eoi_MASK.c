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
typedef  int u16 ;
struct rza1_irqc_priv {scalar_t__ base; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ IRQC_NUM_IRQ ; 
 scalar_t__ IRQRR ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 struct rza1_irqc_priv* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct rza1_irqc_priv *priv = FUNC3(d);
	u16 bit = FUNC0(FUNC4(d));
	u16 tmp;

	tmp = FUNC5(priv->base + IRQRR);
	if (tmp & bit)
		FUNC6(FUNC1(IRQC_NUM_IRQ - 1, 0) & ~bit,
			       priv->base + IRQRR);

	FUNC2(d);
}