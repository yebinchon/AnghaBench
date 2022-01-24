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
struct irq_domain {struct altr_arria10_edac* host_data; } ;
struct altr_arria10_edac {int /*<<< orphan*/  irq_chip; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct altr_arria10_edac*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int irq,
				    irq_hw_number_t hwirq)
{
	struct altr_arria10_edac *edac = d->host_data;

	FUNC0(irq, &edac->irq_chip, handle_simple_irq);
	FUNC1(irq, edac);
	FUNC2(irq);

	return 0;
}