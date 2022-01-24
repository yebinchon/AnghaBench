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
struct bcm7038_l1_chip {size_t* affinity; int /*<<< orphan*/  lock; TYPE_1__** cpus; } ;
typedef  size_t irq_hw_number_t ;
struct TYPE_2__ {size_t* mask_cache; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t IRQS_PER_WORD ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,unsigned int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC3 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct bcm7038_l1_chip* FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct irq_data *d,
				   const struct cpumask *dest,
				   bool force)
{
	struct bcm7038_l1_chip *intc = FUNC5(d);
	unsigned long flags;
	irq_hw_number_t hw = d->hwirq;
	u32 word = hw / IRQS_PER_WORD;
	u32 mask = FUNC0(hw % IRQS_PER_WORD);
	unsigned int first_cpu = FUNC3(dest, cpu_online_mask);
	bool was_disabled;

	FUNC7(&intc->lock, flags);

	was_disabled = !!(intc->cpus[intc->affinity[hw]]->mask_cache[word] &
			  mask);
	FUNC1(d, intc->affinity[hw]);
	intc->affinity[hw] = first_cpu;
	if (!was_disabled)
		FUNC2(d, first_cpu);

	FUNC8(&intc->lock, flags);
	FUNC6(d, FUNC4(first_cpu));

	return 0;
}