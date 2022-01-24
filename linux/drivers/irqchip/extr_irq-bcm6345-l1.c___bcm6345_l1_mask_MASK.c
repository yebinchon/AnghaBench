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
struct bcm6345_l1_chip {TYPE_1__** cpus; } ;
struct TYPE_2__ {size_t* enable_cache; scalar_t__ map_base; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t IRQS_PER_WORD ; 
 int /*<<< orphan*/  FUNC1 (size_t,scalar_t__) ; 
 unsigned int FUNC2 (struct bcm6345_l1_chip*,struct irq_data*) ; 
 struct bcm6345_l1_chip* FUNC3 (struct irq_data*) ; 
 scalar_t__ FUNC4 (struct bcm6345_l1_chip*,size_t) ; 

__attribute__((used)) static inline void FUNC5(struct irq_data *d)
{
	struct bcm6345_l1_chip *intc = FUNC3(d);
	u32 word = d->hwirq / IRQS_PER_WORD;
	u32 mask = FUNC0(d->hwirq % IRQS_PER_WORD);
	unsigned int cpu_idx = FUNC2(intc, d);

	intc->cpus[cpu_idx]->enable_cache[word] &= ~mask;
	FUNC1(intc->cpus[cpu_idx]->enable_cache[word],
		intc->cpus[cpu_idx]->map_base + FUNC4(intc, word));
}