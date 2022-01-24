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
struct mvebu_pic {int /*<<< orphan*/  irq_chip; } ;
struct irq_domain {struct mvebu_pic* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  handle_percpu_devid_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct mvebu_pic*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *domain, unsigned int virq,
			     irq_hw_number_t hwirq)
{
	struct mvebu_pic *pic = domain->host_data;

	FUNC2(virq);
	FUNC1(virq, pic);
	FUNC0(virq, &pic->irq_chip,
				 handle_percpu_devid_irq);
	FUNC4(virq, IRQ_LEVEL);
	FUNC3(virq);

	return 0;
}