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
struct its_vpe {struct its_vm* its_vm; } ;
struct its_vm {int /*<<< orphan*/  vprop_page; int /*<<< orphan*/  nr_db_lpis; int /*<<< orphan*/  db_lpi_base; int /*<<< orphan*/  db_bitmap; } ;
struct irq_domain {struct its_vm* host_data; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct its_vpe* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC5 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct its_vpe*) ; 

__attribute__((used)) static void FUNC10(struct irq_domain *domain,
				    unsigned int virq,
				    unsigned int nr_irqs)
{
	struct its_vm *vm = domain->host_data;
	int i;

	FUNC4(domain, virq, nr_irqs);

	for (i = 0; i < nr_irqs; i++) {
		struct irq_data *data = FUNC5(domain,
								virq + i);
		struct its_vpe *vpe = FUNC3(data);

		FUNC0(vm != vpe->its_vm);

		FUNC2(data->hwirq, vm->db_bitmap);
		FUNC9(vpe);
		FUNC6(data);
	}

	if (FUNC1(vm->db_bitmap, vm->nr_db_lpis)) {
		FUNC8(vm->db_bitmap, vm->db_lpi_base, vm->nr_db_lpis);
		FUNC7(vm->vprop_page);
	}
}