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
struct ipu_soc {int /*<<< orphan*/  domain; int /*<<< orphan*/  irq_sync; int /*<<< orphan*/  irq_err; } ;

/* Variables and functions */
 int IPU_NUM_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ipu_soc *ipu)
{
	int i, irq;

	FUNC3(ipu->irq_err, NULL, NULL);
	FUNC3(ipu->irq_sync, NULL, NULL);

	/* TODO: remove irq_domain_generic_chips */

	for (i = 0; i < IPU_NUM_IRQS; i++) {
		irq = FUNC2(ipu->domain, i);
		if (irq)
			FUNC0(irq);
	}

	FUNC1(ipu->domain);
}