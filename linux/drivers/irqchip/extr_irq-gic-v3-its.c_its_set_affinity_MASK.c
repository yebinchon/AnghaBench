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
struct TYPE_4__ {unsigned int* col_map; } ;
struct its_device {TYPE_2__ event_map; TYPE_1__* its; } ;
struct its_collection {int dummy; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ numa_node; struct its_collection* collections; } ;

/* Variables and functions */
 int EINVAL ; 
 int IRQ_SET_MASK_OK_DONE ; 
 int ITS_FLAGS_WORKAROUND_CAVIUM_23144 ; 
 struct cpumask* cpu_online_mask ; 
 unsigned int FUNC0 (struct cpumask const*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct cpumask* FUNC3 (scalar_t__) ; 
 struct its_device* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct irq_data*) ; 
 size_t FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct its_device*,struct its_collection*,size_t) ; 
 unsigned int nr_cpu_ids ; 

__attribute__((used)) static int FUNC9(struct irq_data *d, const struct cpumask *mask_val,
			    bool force)
{
	unsigned int cpu;
	const struct cpumask *cpu_mask = cpu_online_mask;
	struct its_device *its_dev = FUNC4(d);
	struct its_collection *target_col;
	u32 id = FUNC7(d);

	/* A forwarded interrupt should use irq_set_vcpu_affinity */
	if (FUNC6(d))
		return -EINVAL;

       /* lpi cannot be routed to a redistributor that is on a foreign node */
	if (its_dev->its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_23144) {
		if (its_dev->its->numa_node >= 0) {
			cpu_mask = FUNC3(its_dev->its->numa_node);
			if (!FUNC1(mask_val, cpu_mask))
				return -EINVAL;
		}
	}

	cpu = FUNC0(mask_val, cpu_mask);

	if (cpu >= nr_cpu_ids)
		return -EINVAL;

	/* don't set the affinity when the target cpu is same as current one */
	if (cpu != its_dev->event_map.col_map[id]) {
		target_col = &its_dev->its->collections[cpu];
		FUNC8(its_dev, target_col, id);
		its_dev->event_map.col_map[id] = cpu;
		FUNC5(d, FUNC2(cpu));
	}

	return IRQ_SET_MASK_OK_DONE;
}