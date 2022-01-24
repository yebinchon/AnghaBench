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
struct ls_scfg_msi {size_t msir_num; TYPE_1__* msir; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {scalar_t__ gic_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int IRQ_SET_MASK_OK ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 size_t FUNC0 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 struct ls_scfg_msi* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_affinity_flag ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 

__attribute__((used)) static int FUNC6(struct irq_data *irq_data,
				    const struct cpumask *mask, bool force)
{
	struct ls_scfg_msi *msi_data = FUNC3(irq_data);
	u32 cpu;

	if (!msi_affinity_flag)
		return -EINVAL;

	if (!force)
		cpu = FUNC0(mask, cpu_online_mask);
	else
		cpu = FUNC1(mask);

	if (cpu >= msi_data->msir_num)
		return -EINVAL;

	if (msi_data->msir[cpu].gic_irq <= 0) {
		FUNC5("cannot bind the irq to cpu%d\n", cpu);
		return -EINVAL;
	}

	FUNC4(irq_data, FUNC2(cpu));

	return IRQ_SET_MASK_OK;
}