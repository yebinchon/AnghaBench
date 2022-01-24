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
struct qman_portal {int dummy; } ;
struct caam_napi {int /*<<< orphan*/  irqtask; struct qman_portal* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_PIRQ_DQRI ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qman_portal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct qman_portal *p, struct caam_napi *np)
{
	/*
	 * In case of threaded ISR, for RT kernels in_irq() does not return
	 * appropriate value, so use in_serving_softirq to distinguish between
	 * softirq and irq contexts.
	 */
	if (FUNC4(FUNC0() || !FUNC1())) {
		/* Disable QMan IRQ source and invoke NAPI */
		FUNC3(p, QM_PIRQ_DQRI);
		np->p = p;
		FUNC2(&np->irqtask);
		return 1;
	}
	return 0;
}