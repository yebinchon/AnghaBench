#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct max8997_muic_info {int /*<<< orphan*/  irq_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  virq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct max8997_muic_info*) ; 
 TYPE_1__* muic_irqs ; 
 struct max8997_muic_info* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct max8997_muic_info *info = FUNC3(pdev);
	int i;

	for (i = 0; i < FUNC0(muic_irqs); i++)
		FUNC2(muic_irqs[i].virq, info);
	FUNC1(&info->irq_work);

	return 0;
}