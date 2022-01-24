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
struct irq_fwspec {int param_count; unsigned long* param; int /*<<< orphan*/  fwnode; } ;
struct irq_domain {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *domain,
				       struct irq_fwspec *fwspec,
				       unsigned long *hwirq,
				       unsigned int *type)
{
	/* We support standard DT translation */
	if (FUNC2(fwspec->fwnode) && fwspec->param_count == 2) {
		*hwirq = fwspec->param[0];
		*type = fwspec->param[1];
		return 0;
	}

	if (FUNC1(fwspec->fwnode)) {
		if (fwspec->param_count != 2)
			return -EINVAL;
		*hwirq = fwspec->param[0];
		*type = fwspec->param[1];
		FUNC0(*type == IRQ_TYPE_NONE);
		return 0;
	}

	return -EINVAL;
}