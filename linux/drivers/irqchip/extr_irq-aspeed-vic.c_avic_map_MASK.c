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
struct irq_domain {struct aspeed_vic* host_data; } ;
struct aspeed_vic {unsigned int* edge_sources; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  avic_chip ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct aspeed_vic*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int irq,
		    irq_hw_number_t hwirq)
{
	struct aspeed_vic *vic = d->host_data;
	unsigned int sidx = hwirq >> 5;
	unsigned int sbit = 1u << (hwirq & 0x1f);

	/* Check if interrupt exists */
	if (sidx > 1)
		return -EPERM;

	if (vic->edge_sources[sidx] & sbit)
		FUNC0(irq, &avic_chip, handle_edge_irq);
	else
		FUNC0(irq, &avic_chip, handle_level_irq);
	FUNC1(irq, vic);
	FUNC2(irq);
	return 0;
}