#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int dummy; } ;
struct intc_irqpin_priv {TYPE_1__* irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* irq_mask ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int requested_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 struct intc_irqpin_priv* FUNC1 (struct irq_data*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct intc_irqpin_priv *p = FUNC1(d);
	int irq = p->irq[FUNC4(d)].requested_irq;

	/* disable interrupt through parent interrupt controller,
	 * assumes non-shared interrupt with 1:1 mapping
	 * needed for busted IRQs on some SoCs like sh73a0
	 */
	FUNC2(irq)->irq_mask(FUNC3(irq));
	FUNC0(d);
}