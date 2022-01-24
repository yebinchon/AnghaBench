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
struct irqsteer_data {int irq_count; int /*<<< orphan*/  ipg_clk; int /*<<< orphan*/  domain; int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct irqsteer_data* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct irqsteer_data *irqsteer_data = FUNC3(pdev);
	int i;

	for (i = 0; i < irqsteer_data->irq_count; i++)
		FUNC2(irqsteer_data->irq[i],
						 NULL, NULL);

	FUNC1(irqsteer_data->domain);

	FUNC0(irqsteer_data->ipg_clk);

	return 0;
}