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
struct vic_device {int valid_sources; int /*<<< orphan*/  base; } ;
struct irq_domain {struct vic_device* host_data; } ;
typedef  int irq_hw_number_t ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  vic_chip ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int irq,
			     irq_hw_number_t hwirq)
{
	struct vic_device *v = d->host_data;

	/* Skip invalid IRQs, only register handlers for the real ones */
	if (!(v->valid_sources & (1 << hwirq)))
		return -EPERM;
	FUNC0(irq, &vic_chip, handle_level_irq);
	FUNC1(irq, v->base);
	FUNC2(irq);
	return 0;
}