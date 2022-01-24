#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int dummy; } ;
struct intc_irqpin_priv {int /*<<< orphan*/  wakeup_path; TYPE_1__* irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  requested_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct intc_irqpin_priv* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct irq_data*) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, unsigned int on)
{
	struct intc_irqpin_priv *p = FUNC2(d);
	int hw_irq = FUNC4(d);

	FUNC3(p->irq[hw_irq].requested_irq, on);
	if (on)
		FUNC1(&p->wakeup_path);
	else
		FUNC0(&p->wakeup_path);

	return 0;
}