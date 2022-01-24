#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct irq_data {size_t hwirq; } ;
struct cpumask {int dummy; } ;
struct bcm6345_l1_chip {int /*<<< orphan*/  lock; TYPE_1__** cpus; int /*<<< orphan*/  cpumask; } ;
struct TYPE_2__ {size_t* enable_cache; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int EINVAL ; 
 size_t IRQS_PER_WORD ; 
 int IRQ_SET_MASK_OK_NOCOPY ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 unsigned int FUNC3 (struct bcm6345_l1_chip*,struct irq_data*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC4 (struct cpumask*,int /*<<< orphan*/ *,struct cpumask const*) ; 
 unsigned int FUNC5 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 struct cpumask* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_data*) ; 
 struct bcm6345_l1_chip* FUNC9 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_data*,struct cpumask*) ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct irq_data *d,
				   const struct cpumask *dest,
				   bool force)
{
	struct bcm6345_l1_chip *intc = FUNC9(d);
	u32 word = d->hwirq / IRQS_PER_WORD;
	u32 mask = FUNC0(d->hwirq % IRQS_PER_WORD);
	unsigned int old_cpu = FUNC3(intc, d);
	unsigned int new_cpu;
	struct cpumask valid;
	unsigned long flags;
	bool enabled;

	if (!FUNC4(&valid, &intc->cpumask, dest))
		return -EINVAL;

	new_cpu = FUNC5(&valid, cpu_online_mask);
	if (new_cpu >= nr_cpu_ids)
		return -EINVAL;

	dest = FUNC7(new_cpu);

	FUNC11(&intc->lock, flags);
	if (old_cpu != new_cpu) {
		enabled = intc->cpus[old_cpu]->enable_cache[word] & mask;
		if (enabled)
			FUNC1(d);
		FUNC6(FUNC8(d), dest);
		if (enabled)
			FUNC2(d);
	} else {
		FUNC6(FUNC8(d), dest);
	}
	FUNC12(&intc->lock, flags);

	FUNC10(d, FUNC7(new_cpu));

	return IRQ_SET_MASK_OK_NOCOPY;
}