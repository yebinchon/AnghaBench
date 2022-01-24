#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_4__ {int* col_map; } ;
struct its_device {TYPE_2__ event_map; TYPE_1__* its; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct cpumask {int dummy; } ;
struct TYPE_3__ {scalar_t__ numa_node; int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ITS_FLAGS_WORKAROUND_CAVIUM_23144 ; 
 struct cpumask* cpu_online_mask ; 
 int FUNC0 (struct cpumask*) ; 
 int FUNC1 (struct cpumask const*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct cpumask* FUNC3 (scalar_t__) ; 
 struct its_device* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct its_device*,int /*<<< orphan*/ ,size_t) ; 
 int nr_cpu_ids ; 

__attribute__((used)) static int FUNC8(struct irq_domain *domain,
				   struct irq_data *d, bool reserve)
{
	struct its_device *its_dev = FUNC4(d);
	u32 event = FUNC6(d);
	const struct cpumask *cpu_mask = cpu_online_mask;
	int cpu;

	/* get the cpu_mask of local node */
	if (its_dev->its->numa_node >= 0)
		cpu_mask = FUNC3(its_dev->its->numa_node);

	/* Bind the LPI to the first possible CPU */
	cpu = FUNC1(cpu_mask, cpu_online_mask);
	if (cpu >= nr_cpu_ids) {
		if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144)
			return -EINVAL;

		cpu = FUNC0(cpu_online_mask);
	}

	its_dev->event_map.col_map[event] = cpu;
	FUNC5(d, FUNC2(cpu));

	/* Map the GIC IRQ and event to the device */
	FUNC7(its_dev, d->hwirq, event);
	return 0;
}