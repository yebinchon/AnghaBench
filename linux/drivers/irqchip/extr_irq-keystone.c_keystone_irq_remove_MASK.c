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
struct platform_device {int dummy; } ;
struct keystone_irq_device {int /*<<< orphan*/  irqd; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int KEYSTONE_N_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct keystone_irq_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct keystone_irq_device* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct keystone_irq_device *kirq = FUNC4(pdev);
	int hwirq;

	FUNC0(kirq->irq, kirq);

	for (hwirq = 0; hwirq < KEYSTONE_N_IRQ; hwirq++)
		FUNC1(FUNC3(kirq->irqd, hwirq));

	FUNC2(kirq->irqd);
	return 0;
}