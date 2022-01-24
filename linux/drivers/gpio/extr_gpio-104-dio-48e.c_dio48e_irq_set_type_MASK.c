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
struct irq_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_NONE ; 
 unsigned long FUNC0 (struct irq_data*) ; 

__attribute__((used)) static int FUNC1(struct irq_data *data, unsigned flow_type)
{
	const unsigned long offset = FUNC0(data);

	/* only bit 3 on each respective Port C supports interrupts */
	if (offset != 19 && offset != 43)
		return -EINVAL;

	if (flow_type != IRQ_TYPE_NONE && flow_type != IRQ_TYPE_EDGE_RISING)
		return -EINVAL;

	return 0;
}