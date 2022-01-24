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
struct irq_domain {int /*<<< orphan*/  host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  imx_irqsteer_irq_chip ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *h, unsigned int irq,
				irq_hw_number_t hwirq)
{
	FUNC2(irq, IRQ_LEVEL);
	FUNC1(irq, h->host_data);
	FUNC0(irq, &imx_irqsteer_irq_chip, handle_level_irq);

	return 0;
}